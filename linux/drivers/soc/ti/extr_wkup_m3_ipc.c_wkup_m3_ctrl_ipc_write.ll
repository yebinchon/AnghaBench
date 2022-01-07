; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_ctrl_ipc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_ctrl_ipc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wkup_m3_ipc = type { i64 }

@AM33XX_CTRL_IPC_REG_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ipc register operation out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wkup_m3_ipc*, i32, i32)* @wkup_m3_ctrl_ipc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wkup_m3_ipc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wkup_m3_ipc* %0, %struct.wkup_m3_ipc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @AM33XX_CTRL_IPC_REG_COUNT, align 4
  %12 = icmp sgt i32 %10, %11
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i1 [ true, %3 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %28

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %22 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @AM33XX_CTRL_IPC_REG_OFFSET(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @writel(i32 %20, i64 %26)
  br label %28

28:                                               ; preds = %19, %18
  ret void
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @AM33XX_CTRL_IPC_REG_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
