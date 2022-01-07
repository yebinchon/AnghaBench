; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_command_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_command_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }

@MVS_COMMAND_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"command active %08X,  slot [%x].\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32)* @mvs_94xx_command_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_94xx_command_active(%struct.mvs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mvs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %7 = load i64, i64* @MVS_COMMAND_ACTIVE, align 8
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 3
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %7, %10
  %12 = call i32 @mvs_cr32(%struct.mvs_info* %6, i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = srem i32 %14, 32
  %16 = shl i32 1, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @mv_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %24 = load i64, i64* @MVS_COMMAND_ACTIVE, align 8
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 3
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* %4, align 4
  %30 = srem i32 %29, 32
  %31 = shl i32 1, %30
  %32 = call i32 @mvs_cw32(%struct.mvs_info* %23, i64 %28, i32 %31)
  br label %33

33:                                               ; preds = %41, %19
  %34 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %35 = load i64, i64* @MVS_COMMAND_ACTIVE, align 8
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i32 @mvs_cr32(%struct.mvs_info* %34, i64 %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = srem i32 %43, 32
  %45 = shl i32 1, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %33, label %48

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %2
  ret void
}

declare dso_local i32 @mvs_cr32(%struct.mvs_info*, i64) #1

declare dso_local i32 @mv_printk(i8*, i32, i32) #1

declare dso_local i32 @mvs_cw32(%struct.mvs_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
