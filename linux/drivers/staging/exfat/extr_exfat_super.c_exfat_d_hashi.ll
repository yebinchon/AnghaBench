; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_d_hashi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_d_hashi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*)* @exfat_d_hashi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_d_hashi(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.qstr*, %struct.qstr** %4, align 8
  %13 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.qstr*, %struct.qstr** %4, align 8
  %16 = call i32 @exfat_striptail_len(%struct.qstr* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = call i64 @init_name_hash(%struct.dentry* %17)
  store i64 %18, i64* %8, align 8
  br label %19

19:                                               ; preds = %23, %2
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i32
  %29 = call i32 @nls_upper(%struct.super_block* %24, i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @partial_name_hash(i32 %29, i64 %30)
  store i64 %31, i64* %8, align 8
  br label %19

32:                                               ; preds = %19
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @end_name_hash(i64 %33)
  %35 = load %struct.qstr*, %struct.qstr** %4, align 8
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  ret i32 0
}

declare dso_local i32 @exfat_striptail_len(%struct.qstr*) #1

declare dso_local i64 @init_name_hash(%struct.dentry*) #1

declare dso_local i64 @partial_name_hash(i32, i64) #1

declare dso_local i32 @nls_upper(%struct.super_block*, i32) #1

declare dso_local i32 @end_name_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
