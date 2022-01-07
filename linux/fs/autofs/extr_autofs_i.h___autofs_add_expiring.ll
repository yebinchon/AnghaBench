; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_autofs_i.h___autofs_add_expiring.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_autofs_i.h___autofs_add_expiring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @__autofs_add_expiring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__autofs_add_expiring(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.autofs_sb_info*, align 8
  %4 = alloca %struct.autofs_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.autofs_sb_info* @autofs_sbi(i32 %7)
  store %struct.autofs_sb_info* %8, %struct.autofs_sb_info** %3, align 8
  %9 = load %struct.dentry*, %struct.dentry** %2, align 8
  %10 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %9)
  store %struct.autofs_info* %10, %struct.autofs_info** %4, align 8
  %11 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  %12 = icmp ne %struct.autofs_info* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  %15 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %14, i32 0, i32 0
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  %20 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %19, i32 0, i32 0
  %21 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %22 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %21, i32 0, i32 0
  %23 = call i32 @list_add(i32* %20, i32* %22)
  br label %24

24:                                               ; preds = %18, %13
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
