; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_start_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_start_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i64, i32, %struct.esas2r_disc_context, %struct.esas2r_request }
%struct.esas2r_disc_context = type { i32, i32, i32 }
%struct.esas2r_request = type { i32, %struct.esas2r_disc_context* }

@AF_DISC_IN_PROG = common dso_local global i32 0, align 4
@AF_DISC_POLLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"disc done\00", align 1
@AF_PORT_CHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"disc_evt: %d\00", align 1
@DCF_POLLED = common dso_local global i32 0, align 4
@RS_SUCCESS = common dso_local global i32 0, align 4
@DCDE_DEV_SCAN = common dso_local global i32 0, align 4
@DCF_DEV_SCAN = common dso_local global i32 0, align 4
@DCS_BLOCK_DEV_SCAN = common dso_local global i32 0, align 4
@DCDE_DEV_CHANGE = common dso_local global i32 0, align 4
@DCF_DEV_CHANGE = common dso_local global i32 0, align 4
@DCS_DEV_RMV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_disc_start_port(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.esas2r_disc_context*, align 8
  %6 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  %7 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %7, i32 0, i32 3
  store %struct.esas2r_request* %8, %struct.esas2r_request** %4, align 8
  %9 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %9, i32 0, i32 2
  store %struct.esas2r_disc_context* %10, %struct.esas2r_disc_context** %5, align 8
  %11 = call i32 (...) @esas2r_trace_enter()
  %12 = load i32, i32* @AF_DISC_IN_PROG, align 4
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %13, i32 0, i32 1
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @esas2r_trace_exit()
  store i32 0, i32* %2, align 4
  br label %132

19:                                               ; preds = %1
  %20 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %21 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32, i32* @AF_DISC_POLLED, align 4
  %26 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (...) @esas2r_trace_exit()
  store i32 0, i32* %2, align 4
  br label %132

37:                                               ; preds = %30, %24
  br label %45

38:                                               ; preds = %19
  %39 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @AF_PORT_CHANGE, align 4
  %41 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %41, i32 0, i32 1
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = call i32 (...) @esas2r_trace_exit()
  store i32 0, i32* %2, align 4
  br label %132

45:                                               ; preds = %37
  %46 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %47 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @esas2r_trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @AF_DISC_IN_PROG, align 4
  %51 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %51, i32 0, i32 1
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %55 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %54, i32 0, i32 2
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* @AF_DISC_POLLED, align 4
  %57 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %57, i32 0, i32 1
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %45
  %62 = load i32, i32* @DCF_POLLED, align 4
  %63 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %64 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %45
  %68 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %69 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %70 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %69, i32 0, i32 1
  store %struct.esas2r_disc_context* %68, %struct.esas2r_disc_context** %70, align 8
  %71 = load i32, i32* @RS_SUCCESS, align 4
  %72 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %73 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %75 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DCDE_DEV_SCAN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %67
  %81 = load i32, i32* @DCDE_DEV_SCAN, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %84 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @DCF_DEV_SCAN, align 4
  %88 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %89 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @DCS_BLOCK_DEV_SCAN, align 4
  %93 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %94 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %118

95:                                               ; preds = %67
  %96 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %97 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DCDE_DEV_CHANGE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load i32, i32* @DCDE_DEV_CHANGE, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %106 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @DCF_DEV_CHANGE, align 4
  %110 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %111 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @DCS_DEV_RMV, align 4
  %115 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %116 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %102, %95
  br label %118

118:                                              ; preds = %117, %80
  %119 = load i32, i32* @AF_DISC_POLLED, align 4
  %120 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %120, i32 0, i32 1
  %122 = call i64 @test_bit(i32 %119, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %118
  %125 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %126 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %127 = call i32 @esas2r_disc_continue(%struct.esas2r_adapter* %125, %struct.esas2r_request* %126)
  store i32 %127, i32* %6, align 4
  br label %129

128:                                              ; preds = %118
  store i32 1, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %124
  %130 = call i32 (...) @esas2r_trace_exit()
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %129, %38, %35, %17
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @esas2r_trace(i8*, i32) #1

declare dso_local i32 @esas2r_disc_continue(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
