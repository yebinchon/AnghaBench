; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_soc_common.c_soc_common_pcmcia_config_skt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_soc_common.c_soc_common_pcmcia_config_skt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.gpio_desc*, %struct.gpio_desc*, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.gpio_desc = type { i32 }
%struct.TYPE_7__ = type { {}* }

@.str = private unnamed_addr constant [50 x i8] c"soc_common_pcmcia: unable to configure socket %d\0A\00", align 1
@values = common dso_local global i32 0, align 4
@SS_RESET = common dso_local global i32 0, align 4
@SS_OUTPUT_ENA = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*, %struct.TYPE_9__*)* @soc_common_pcmcia_config_skt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_common_pcmcia_config_skt(%struct.soc_pcmcia_socket* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_pcmcia_socket*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.gpio_desc*], align 16
  %8 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %10 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %9, i32 0, i32 5
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.soc_pcmcia_socket*, %struct.TYPE_9__*)**
  %14 = load i32 (%struct.soc_pcmcia_socket*, %struct.TYPE_9__*)*, i32 (%struct.soc_pcmcia_socket*, %struct.TYPE_9__*)** %13, align 8
  %15 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = call i32 %14(%struct.soc_pcmcia_socket* %15, %struct.TYPE_9__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %22 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %26 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %25, i32 0, i32 5
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.soc_pcmcia_socket*, %struct.TYPE_9__*)**
  %30 = load i32 (%struct.soc_pcmcia_socket*, %struct.TYPE_9__*)*, i32 (%struct.soc_pcmcia_socket*, %struct.TYPE_9__*)** %29, align 8
  %31 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %32 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %33 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %32, i32 0, i32 1
  %34 = call i32 %30(%struct.soc_pcmcia_socket* %31, %struct.TYPE_9__* %33)
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %139

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %137

40:                                               ; preds = %37
  %41 = load i32, i32* @values, align 4
  %42 = call i32 @DECLARE_BITMAP(i32 %41, i32 2)
  store i32 0, i32* %8, align 4
  %43 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %44 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %43, i32 0, i32 4
  %45 = load %struct.gpio_desc*, %struct.gpio_desc** %44, align 8
  %46 = icmp ne %struct.gpio_desc* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %40
  %48 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %49 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %48, i32 0, i32 4
  %50 = load %struct.gpio_desc*, %struct.gpio_desc** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x %struct.gpio_desc*], [2 x %struct.gpio_desc*]* %7, i64 0, i64 %52
  store %struct.gpio_desc* %50, %struct.gpio_desc** %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @values, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SS_RESET, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @__assign_bit(i32 %54, i32 %56, i32 %61)
  br label %63

63:                                               ; preds = %47, %40
  %64 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %65 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %64, i32 0, i32 3
  %66 = load %struct.gpio_desc*, %struct.gpio_desc** %65, align 8
  %67 = icmp ne %struct.gpio_desc* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %70 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %69, i32 0, i32 3
  %71 = load %struct.gpio_desc*, %struct.gpio_desc** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x %struct.gpio_desc*], [2 x %struct.gpio_desc*]* %7, i64 0, i64 %73
  store %struct.gpio_desc* %71, %struct.gpio_desc** %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @values, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SS_OUTPUT_ENA, align 4
  %82 = and i32 %80, %81
  %83 = call i32 @__assign_bit(i32 %75, i32 %77, i32 %82)
  br label %84

84:                                               ; preds = %68, %63
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = getelementptr inbounds [2 x %struct.gpio_desc*], [2 x %struct.gpio_desc*]* %7, i64 0, i64 0
  %90 = load i32, i32* @values, align 4
  %91 = call i32 @gpiod_set_array_value_cansleep(i32 %88, %struct.gpio_desc** %89, i32* null, i32 %90)
  br label %92

92:                                               ; preds = %87, %84
  %93 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %94 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %111

97:                                               ; preds = %92
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %104 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %106 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %110 = call i32 @irq_set_irq_type(i32 %108, i32 %109)
  br label %131

111:                                              ; preds = %97, %92
  %112 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %113 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %123 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %125 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %129 = call i32 @irq_set_irq_type(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %121, %116, %111
  br label %131

131:                                              ; preds = %130, %102
  %132 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %133 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %132, i32 0, i32 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = bitcast %struct.TYPE_9__* %133 to i8*
  %136 = bitcast %struct.TYPE_9__* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 16, i1 false)
  br label %137

137:                                              ; preds = %131, %37
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %20
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i32 @__assign_bit(i32, i32, i32) #1

declare dso_local i32 @gpiod_set_array_value_cansleep(i32, %struct.gpio_desc**, i32*, i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
