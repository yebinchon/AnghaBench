; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rx.c_cvm_oct_rx_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rx.c_cvm_oct_rx_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%union.cvmx_sso_wq_int_thrx = type { i64 }
%union.cvmx_pow_wq_int_pc = type { i64 }
%union.cvmx_pow_wq_int_thrx = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@TOTAL_NUMBER_OF_PORTS = common dso_local global i32 0, align 4
@cvm_oct_device = common dso_local global %struct.net_device** null, align 8
@.str = private unnamed_addr constant [31 x i8] c"No net_devices were allocated.\00", align 1
@oct_rx_group = common dso_local global %struct.TYPE_9__* null, align 8
@pow_receive_groups = common dso_local global i32 0, align 4
@cvm_oct_napi_poll = common dso_local global i32 0, align 4
@rx_napi_weight = common dso_local global i32 0, align 4
@OCTEON_IRQ_WORKQ0 = common dso_local global i64 0, align 8
@cvm_oct_do_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Ethernet\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not acquire Ethernet IRQ %d\0A\00", align 1
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@CVMX_SSO_WQ_INT_PC = common dso_local global i32 0, align 4
@CVMX_POW_WQ_INT_PC = common dso_local global i32 0, align 4
@oct_rx_ready = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvm_oct_rx_initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.cvmx_sso_wq_int_thrx, align 8
  %5 = alloca %union.cvmx_pow_wq_int_pc, align 8
  %6 = alloca %union.cvmx_pow_wq_int_thrx, align 8
  %7 = alloca %union.cvmx_pow_wq_int_pc, align 8
  store %struct.net_device* null, %struct.net_device** %2, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %26, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @TOTAL_NUMBER_OF_PORTS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = load %struct.net_device**, %struct.net_device*** @cvm_oct_device, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.net_device*, %struct.net_device** %13, i64 %15
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.net_device**, %struct.net_device*** @cvm_oct_device, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.net_device*, %struct.net_device** %20, i64 %22
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %2, align 8
  br label %29

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %8

29:                                               ; preds = %19, %8
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %155, %34
  %36 = load i32, i32* %1, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oct_rx_group, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %158

40:                                               ; preds = %35
  %41 = load i32, i32* @pow_receive_groups, align 4
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %155

47:                                               ; preds = %40
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oct_rx_group, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* @cvm_oct_napi_poll, align 4
  %55 = load i32, i32* @rx_napi_weight, align 4
  %56 = call i32 @netif_napi_add(%struct.net_device* %48, i32* %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oct_rx_group, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = call i32 @napi_enable(i32* %61)
  %63 = load i64, i64* @OCTEON_IRQ_WORKQ0, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oct_rx_group, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  store i64 %66, i64* %71, align 8
  %72 = load i32, i32* %1, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oct_rx_group, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oct_rx_group, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @cvm_oct_do_interrupt, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oct_rx_group, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = call i32 @request_irq(i64 %83, i32 %84, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %47
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oct_rx_group, align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %93, %47
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oct_rx_group, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @disable_irq_nosync(i64 %107)
  %109 = load i32, i32* @OCTEON_CN68XX, align 4
  %110 = call i64 @OCTEON_IS_MODEL(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %101
  %113 = bitcast %union.cvmx_sso_wq_int_thrx* %4 to i64*
  store i64 0, i64* %113, align 8
  %114 = bitcast %union.cvmx_sso_wq_int_thrx* %4 to %struct.TYPE_6__*
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  %116 = bitcast %union.cvmx_sso_wq_int_thrx* %4 to %struct.TYPE_6__*
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  %118 = load i32, i32* %1, align 4
  %119 = call i32 @CVMX_SSO_WQ_INT_THRX(i32 %118)
  %120 = bitcast %union.cvmx_sso_wq_int_thrx* %4 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @cvmx_write_csr(i32 %119, i64 %121)
  %123 = bitcast %union.cvmx_pow_wq_int_pc* %5 to i64*
  store i64 0, i64* %123, align 8
  %124 = bitcast %union.cvmx_pow_wq_int_pc* %5 to %struct.TYPE_8__*
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i32 5, i32* %125, align 8
  %126 = load i32, i32* @CVMX_SSO_WQ_INT_PC, align 4
  %127 = bitcast %union.cvmx_pow_wq_int_pc* %5 to i64*
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @cvmx_write_csr(i32 %126, i64 %128)
  br label %148

130:                                              ; preds = %101
  %131 = bitcast %union.cvmx_pow_wq_int_thrx* %6 to i64*
  store i64 0, i64* %131, align 8
  %132 = bitcast %union.cvmx_pow_wq_int_thrx* %6 to %struct.TYPE_7__*
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = bitcast %union.cvmx_pow_wq_int_thrx* %6 to %struct.TYPE_7__*
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  %136 = load i32, i32* %1, align 4
  %137 = call i32 @CVMX_POW_WQ_INT_THRX(i32 %136)
  %138 = bitcast %union.cvmx_pow_wq_int_thrx* %6 to i64*
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @cvmx_write_csr(i32 %137, i64 %139)
  %141 = bitcast %union.cvmx_pow_wq_int_pc* %7 to i64*
  store i64 0, i64* %141, align 8
  %142 = bitcast %union.cvmx_pow_wq_int_pc* %7 to %struct.TYPE_8__*
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i32 5, i32* %143, align 8
  %144 = load i32, i32* @CVMX_POW_WQ_INT_PC, align 4
  %145 = bitcast %union.cvmx_pow_wq_int_pc* %7 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @cvmx_write_csr(i32 %144, i64 %146)
  br label %148

148:                                              ; preds = %130, %112
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** @oct_rx_group, align 8
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = call i32 @napi_schedule(i32* %153)
  br label %155

155:                                              ; preds = %148, %46
  %156 = load i32, i32* %1, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %1, align 4
  br label %35

158:                                              ; preds = %35
  %159 = call i32 @atomic_inc(i32* @oct_rx_ready)
  ret void
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, i32*) #1

declare dso_local i32 @disable_irq_nosync(i64) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_SSO_WQ_INT_THRX(i32) #1

declare dso_local i32 @CVMX_POW_WQ_INT_THRX(i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
