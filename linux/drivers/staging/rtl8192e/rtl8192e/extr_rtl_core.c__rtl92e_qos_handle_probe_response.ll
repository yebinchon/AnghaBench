; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_qos_handle_probe_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_qos_handle_probe_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8192_priv = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rtllib_network = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i32 }

@RTLLIB_LINKED = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@NETWORK_HAS_QOS_MASK = common dso_local global i32 0, align 4
@NETWORK_HAS_QOS_PARAMETERS = common dso_local global i32 0, align 4
@COMP_QOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"QoS parameters change call qos_activate\0A\00", align 1
@def_qos_parameters = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"QoS was disabled call qos_activate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8192_priv*, i32, %struct.rtllib_network*)* @_rtl92e_qos_handle_probe_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_qos_handle_probe_response(%struct.r8192_priv* %0, i32 %1, %struct.rtllib_network* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtllib_network*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.r8192_priv* %0, %struct.r8192_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rtllib_network* %2, %struct.rtllib_network** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RTLLIB_LINKED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %133

19:                                               ; preds = %3
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IW_MODE_INFRA, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %133

29:                                               ; preds = %19
  %30 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %31 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NETWORK_HAS_QOS_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %102

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %41 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NETWORK_HAS_QOS_PARAMETERS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %48 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %52 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  br label %54

54:                                               ; preds = %46, %39, %36
  %55 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %56 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %101

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %101

63:                                               ; preds = %60
  %64 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %65 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NETWORK_HAS_QOS_PARAMETERS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %63
  %71 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %72 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %76 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %74, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %70
  %81 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %82 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %86 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store i64 %84, i64* %87, align 8
  %88 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %89 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %93 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  store i32 %91, i32* %95, align 4
  %96 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %97 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %96, i32 0, i32 0
  %98 = call i32 @schedule_work(i32* %97)
  %99 = load i32, i32* @COMP_QOS, align 4
  %100 = call i32 @RT_TRACE(i32 %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %80, %70, %63, %60, %54
  br label %132

102:                                              ; preds = %29
  %103 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %104 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @memcpy(i32* %108, i32* @def_qos_parameters, i32 %109)
  %111 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %112 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %125

116:                                              ; preds = %102
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %121 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %120, i32 0, i32 0
  %122 = call i32 @schedule_work(i32* %121)
  %123 = load i32, i32* @COMP_QOS, align 4
  %124 = call i32 @RT_TRACE(i32 %123, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %119, %116, %102
  %126 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %127 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load %struct.rtllib_network*, %struct.rtllib_network** %7, align 8
  %130 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %125, %101
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %27, %17
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
