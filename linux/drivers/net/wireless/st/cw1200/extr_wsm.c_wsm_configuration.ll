; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.wsm_buf }
%struct.wsm_buf = type { i32 }
%struct.wsm_configuration = type { i32, i32, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WSM_CONFIGURATION_REQ_ID = common dso_local global i32 0, align 4
@WSM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsm_configuration(%struct.cw1200_common* %0, %struct.wsm_configuration* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_configuration*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wsm_buf*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_configuration* %1, %struct.wsm_configuration** %5, align 8
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 0
  store %struct.wsm_buf* %9, %struct.wsm_buf** %7, align 8
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %11 = call i32 @wsm_cmd_lock(%struct.cw1200_common* %10)
  %12 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %13 = load %struct.wsm_configuration*, %struct.wsm_configuration** %5, align 8
  %14 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @WSM_PUT32(%struct.wsm_buf* %12, i32 %15)
  %17 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %18 = load %struct.wsm_configuration*, %struct.wsm_configuration** %5, align 8
  %19 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @WSM_PUT32(%struct.wsm_buf* %17, i32 %20)
  %22 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %23 = load %struct.wsm_configuration*, %struct.wsm_configuration** %5, align 8
  %24 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WSM_PUT32(%struct.wsm_buf* %22, i32 %25)
  %27 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %28 = load %struct.wsm_configuration*, %struct.wsm_configuration** %5, align 8
  %29 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 12
  %32 = call i32 @WSM_PUT16(%struct.wsm_buf* %27, i32 %31)
  %33 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %34 = call i32 @WSM_PUT16(%struct.wsm_buf* %33, i32 1)
  %35 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %36 = load %struct.wsm_configuration*, %struct.wsm_configuration** %5, align 8
  %37 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = call i32 @WSM_PUT(%struct.wsm_buf* %35, i32 %38, i32 %39)
  %41 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %42 = call i32 @WSM_PUT16(%struct.wsm_buf* %41, i32 5)
  %43 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %44 = load %struct.wsm_configuration*, %struct.wsm_configuration** %5, align 8
  %45 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wsm_configuration*, %struct.wsm_configuration** %5, align 8
  %48 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @WSM_PUT(%struct.wsm_buf* %43, i32 %46, i32 %49)
  %51 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %52 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %53 = load %struct.wsm_configuration*, %struct.wsm_configuration** %5, align 8
  %54 = load i32, i32* @WSM_CONFIGURATION_REQ_ID, align 4
  %55 = load i32, i32* @WSM_CMD_TIMEOUT, align 4
  %56 = call i32 @wsm_cmd_send(%struct.cw1200_common* %51, %struct.wsm_buf* %52, %struct.wsm_configuration* %53, i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %58 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; No predecessors!
  %61 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %62 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %2
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @wsm_cmd_lock(%struct.cw1200_common*) #1

declare dso_local i32 @WSM_PUT32(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT16(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT(%struct.wsm_buf*, i32, i32) #1

declare dso_local i32 @wsm_cmd_send(%struct.cw1200_common*, %struct.wsm_buf*, %struct.wsm_configuration*, i32, i32) #1

declare dso_local i32 @wsm_cmd_unlock(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
