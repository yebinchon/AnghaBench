; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, %struct.wsm_buf }
%struct.wsm_buf = type { i32 }
%struct.wsm_join = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.wsm_join_cnf = type { i32 }

@WSM_JOIN_REQ_ID = common dso_local global i32 0, align 4
@WSM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsm_join(%struct.cw1200_common* %0, %struct.wsm_join* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_join*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wsm_buf*, align 8
  %8 = alloca %struct.wsm_join_cnf, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_join* %1, %struct.wsm_join** %5, align 8
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %10 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %9, i32 0, i32 2
  store %struct.wsm_buf* %10, %struct.wsm_buf** %7, align 8
  %11 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %12 = call i32 @wsm_cmd_lock(%struct.cw1200_common* %11)
  %13 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %14 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %15 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @WSM_PUT8(%struct.wsm_buf* %13, i32 %16)
  %18 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %19 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %20 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WSM_PUT8(%struct.wsm_buf* %18, i32 %21)
  %23 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %24 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %25 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @WSM_PUT16(%struct.wsm_buf* %23, i32 %26)
  %28 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %29 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %30 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %29, i32 0, i32 9
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @WSM_PUT(%struct.wsm_buf* %28, i32* %32, i32 8)
  %34 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %35 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %36 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @WSM_PUT16(%struct.wsm_buf* %34, i32 %37)
  %39 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %40 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %41 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @WSM_PUT8(%struct.wsm_buf* %39, i32 %42)
  %44 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %45 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %46 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @WSM_PUT8(%struct.wsm_buf* %44, i32 %47)
  %49 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %50 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %51 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @WSM_PUT8(%struct.wsm_buf* %49, i32 %52)
  %54 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %55 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %56 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @WSM_PUT8(%struct.wsm_buf* %54, i32 %57)
  %59 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %60 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %61 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @WSM_PUT32(%struct.wsm_buf* %59, i32 %62)
  %64 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %65 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %66 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = call i32 @WSM_PUT(%struct.wsm_buf* %64, i32* %68, i32 8)
  %70 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %71 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %72 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @WSM_PUT32(%struct.wsm_buf* %70, i32 %73)
  %75 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %76 = load %struct.wsm_join*, %struct.wsm_join** %5, align 8
  %77 = getelementptr inbounds %struct.wsm_join, %struct.wsm_join* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @WSM_PUT32(%struct.wsm_buf* %75, i32 %78)
  %80 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %81 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %80, i32 0, i32 0
  store i32 -1, i32* %81, align 4
  %82 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %83 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %84 = load i32, i32* @WSM_JOIN_REQ_ID, align 4
  %85 = load i32, i32* @WSM_CMD_TIMEOUT, align 4
  %86 = call i32 @wsm_cmd_send(%struct.cw1200_common* %82, %struct.wsm_buf* %83, %struct.wsm_join_cnf* %8, i32 %84, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = getelementptr inbounds %struct.wsm_join_cnf, %struct.wsm_join_cnf* %8, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %90 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %92 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %99

94:                                               ; No predecessors!
  %95 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %96 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %95)
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %94, %2
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @wsm_cmd_lock(%struct.cw1200_common*) #1

declare dso_local i32 @WSM_PUT8(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT16(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT(%struct.wsm_buf*, i32*, i32) #1

declare dso_local i32 @WSM_PUT32(%struct.wsm_buf*, i32) #1

declare dso_local i32 @wsm_cmd_send(%struct.cw1200_common*, %struct.wsm_buf*, %struct.wsm_join_cnf*, i32, i32) #1

declare dso_local i32 @wsm_cmd_unlock(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
