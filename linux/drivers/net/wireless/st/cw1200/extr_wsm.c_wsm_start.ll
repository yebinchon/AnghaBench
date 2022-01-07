; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, %struct.wsm_buf }
%struct.wsm_buf = type { i32 }
%struct.wsm_start = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WSM_START_REQ_ID = common dso_local global i32 0, align 4
@WSM_CMD_START_TIMEOUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsm_start(%struct.cw1200_common* %0, %struct.wsm_start* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_start*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wsm_buf*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_start* %1, %struct.wsm_start** %5, align 8
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 1
  store %struct.wsm_buf* %9, %struct.wsm_buf** %7, align 8
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %11 = call i32 @wsm_cmd_lock(%struct.cw1200_common* %10)
  %12 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %13 = load %struct.wsm_start*, %struct.wsm_start** %5, align 8
  %14 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @WSM_PUT8(%struct.wsm_buf* %12, i32 %15)
  %17 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %18 = load %struct.wsm_start*, %struct.wsm_start** %5, align 8
  %19 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @WSM_PUT8(%struct.wsm_buf* %17, i32 %20)
  %22 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %23 = load %struct.wsm_start*, %struct.wsm_start** %5, align 8
  %24 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WSM_PUT16(%struct.wsm_buf* %22, i32 %25)
  %27 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %28 = load %struct.wsm_start*, %struct.wsm_start** %5, align 8
  %29 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @WSM_PUT32(%struct.wsm_buf* %27, i32 %30)
  %32 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %33 = load %struct.wsm_start*, %struct.wsm_start** %5, align 8
  %34 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @WSM_PUT32(%struct.wsm_buf* %32, i32 %35)
  %37 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %38 = load %struct.wsm_start*, %struct.wsm_start** %5, align 8
  %39 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WSM_PUT8(%struct.wsm_buf* %37, i32 %40)
  %42 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %43 = load %struct.wsm_start*, %struct.wsm_start** %5, align 8
  %44 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @WSM_PUT8(%struct.wsm_buf* %42, i32 %45)
  %47 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %48 = load %struct.wsm_start*, %struct.wsm_start** %5, align 8
  %49 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @WSM_PUT8(%struct.wsm_buf* %47, i32 %50)
  %52 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %53 = load %struct.wsm_start*, %struct.wsm_start** %5, align 8
  %54 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @WSM_PUT8(%struct.wsm_buf* %52, i32 %55)
  %57 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %58 = load %struct.wsm_start*, %struct.wsm_start** %5, align 8
  %59 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @WSM_PUT(%struct.wsm_buf* %57, i32 %60, i32 4)
  %62 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %63 = load %struct.wsm_start*, %struct.wsm_start** %5, align 8
  %64 = getelementptr inbounds %struct.wsm_start, %struct.wsm_start* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @WSM_PUT32(%struct.wsm_buf* %62, i32 %65)
  %67 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %68 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 4
  %69 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %70 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %71 = load i32, i32* @WSM_START_REQ_ID, align 4
  %72 = load i32, i32* @WSM_CMD_START_TIMEOUT, align 4
  %73 = call i32 @wsm_cmd_send(%struct.cw1200_common* %69, %struct.wsm_buf* %70, i32* null, i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %75 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %82

77:                                               ; No predecessors!
  %78 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %79 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %2
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @wsm_cmd_lock(%struct.cw1200_common*) #1

declare dso_local i32 @WSM_PUT8(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT16(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT32(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT(%struct.wsm_buf*, i32, i32) #1

declare dso_local i32 @wsm_cmd_send(%struct.cw1200_common*, %struct.wsm_buf*, i32*, i32, i32) #1

declare dso_local i32 @wsm_cmd_unlock(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
