; ModuleID = '/home/carl/AnghaBench/linux/fs/efivarfs/extr_super.c_efivarfs_alloc_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/efivarfs/extr_super.c_efivarfs_alloc_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, i8*)* @efivarfs_alloc_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @efivarfs_alloc_dentry(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.qstr, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds %struct.qstr, %struct.qstr* %7, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = getelementptr inbounds %struct.qstr, %struct.qstr* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call i32 @efivarfs_d_hash(%struct.dentry* %14, %struct.qstr* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.dentry* @ERR_PTR(i32 %19)
  store %struct.dentry* %20, %struct.dentry** %3, align 8
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = call %struct.dentry* @d_alloc(%struct.dentry* %22, %struct.qstr* %7)
  store %struct.dentry* %23, %struct.dentry** %6, align 8
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = icmp ne %struct.dentry* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %27, %struct.dentry** %3, align 8
  br label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.dentry* @ERR_PTR(i32 %30)
  store %struct.dentry* %31, %struct.dentry** %3, align 8
  br label %32

32:                                               ; preds = %28, %26, %18
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %33
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @efivarfs_d_hash(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, %struct.qstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
