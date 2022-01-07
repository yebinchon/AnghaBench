; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_revalidate_ci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_revalidate_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@LOOKUP_CREATE = common dso_local global i32 0, align 4
@LOOKUP_RENAME_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @exfat_revalidate_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_revalidate_ci(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @LOOKUP_RCU, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ECHILD, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %34

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %34

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @LOOKUP_CREATE, align 4
  %26 = load i32, i32* @LOOKUP_RENAME_TARGET, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = call i32 @__exfat_revalidate(%struct.dentry* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %30, %22, %18, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @__exfat_revalidate(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
