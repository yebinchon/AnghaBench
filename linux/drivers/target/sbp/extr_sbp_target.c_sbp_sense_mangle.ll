; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_sense_mangle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_sense_mangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_target_request = type { i32*, %struct.TYPE_2__, %struct.se_cmd }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.se_cmd = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"sbp_send_sense: unknown sense format: 0x%x\0A\00", align 1
@STATUS_RESP_REQUEST_COMPLETE = common dso_local global i32 0, align 4
@SBP_STATUS_REQUEST_ABORTED = common dso_local global i32 0, align 4
@SBP_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_target_request*)* @sbp_sense_mangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_sense_mangle(%struct.sbp_target_request* %0) #0 {
  %2 = alloca %struct.sbp_target_request*, align 8
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.sbp_target_request* %0, %struct.sbp_target_request** %2, align 8
  %6 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %7 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %6, i32 0, i32 2
  store %struct.se_cmd* %7, %struct.se_cmd** %3, align 8
  %8 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %9 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %12 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 18
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 127
  switch i32 %24, label %32 [
    i32 112, label %25
    i32 113, label %28
    i32 114, label %31
    i32 115, label %31
  ]

25:                                               ; preds = %1
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 0, i32* %27, align 4
  br label %52

28:                                               ; preds = %1
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 64, i32* %30, align 4
  br label %52

31:                                               ; preds = %1, %1
  br label %32

32:                                               ; preds = %1, %31
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @STATUS_RESP_REQUEST_COMPLETE, align 4
  %38 = call i32 @STATUS_BLOCK_RESP(i32 %37)
  %39 = call i32 @STATUS_BLOCK_DEAD(i32 0)
  %40 = or i32 %38, %39
  %41 = call i32 @STATUS_BLOCK_LEN(i32 1)
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SBP_STATUS_REQUEST_ABORTED, align 4
  %44 = call i32 @STATUS_BLOCK_SBP_STATUS(i32 %43)
  %45 = or i32 %42, %44
  %46 = call i32 @cpu_to_be32(i32 %45)
  %47 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %48 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 8
  br label %163

52:                                               ; preds = %28, %25
  %53 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %54 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 63
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 128
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 224
  %69 = ashr i32 %68, 1
  %70 = or i32 %64, %69
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 15
  %75 = or i32 %70, %74
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %79 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %84 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 5
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 6
  store i32 %100, i32* %102, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 6
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 7
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 8
  store i32 %110, i32* %112, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 9
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 9
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 10
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 10
  store i32 %120, i32* %122, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 11
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 11
  store i32 %125, i32* %127, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 14
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 12
  store i32 %130, i32* %132, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 15
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 13
  store i32 %135, i32* %137, align 4
  %138 = load i32*, i32** %4, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 16
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 14
  store i32 %140, i32* %142, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 17
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %5, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 15
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @STATUS_RESP_REQUEST_COMPLETE, align 4
  %149 = call i32 @STATUS_BLOCK_RESP(i32 %148)
  %150 = call i32 @STATUS_BLOCK_DEAD(i32 0)
  %151 = or i32 %149, %150
  %152 = call i32 @STATUS_BLOCK_LEN(i32 5)
  %153 = or i32 %151, %152
  %154 = load i32, i32* @SBP_STATUS_OK, align 4
  %155 = call i32 @STATUS_BLOCK_SBP_STATUS(i32 %154)
  %156 = or i32 %153, %155
  %157 = call i32 @cpu_to_be32(i32 %156)
  %158 = load %struct.sbp_target_request*, %struct.sbp_target_request** %2, align 8
  %159 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %157
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %52, %32
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @STATUS_BLOCK_RESP(i32) #1

declare dso_local i32 @STATUS_BLOCK_DEAD(i32) #1

declare dso_local i32 @STATUS_BLOCK_LEN(i32) #1

declare dso_local i32 @STATUS_BLOCK_SBP_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
