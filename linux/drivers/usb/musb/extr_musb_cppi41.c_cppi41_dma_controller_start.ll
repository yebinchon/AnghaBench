; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_dma_controller_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_dma_controller_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi41_dma_controller = type { i32, %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel*, %struct.TYPE_3__ }
%struct.cppi41_dma_channel = type { i32, i32, %struct.dma_chan*, %struct.dma_channel, i32, %struct.cppi41_dma_controller* }
%struct.dma_chan = type { i32 }
%struct.dma_channel = type { i32, i32, %struct.cppi41_dma_channel* }
%struct.TYPE_3__ = type { %struct.musb* }
%struct.musb = type { %struct.device* }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Wrong dmatype %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MUSB_DMA_STATUS_FREE = common dso_local global i32 0, align 4
@SZ_4M = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to request %s: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cppi41_dma_controller*)* @cppi41_dma_controller_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cppi41_dma_controller_start(%struct.cppi41_dma_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cppi41_dma_controller*, align 8
  %4 = alloca %struct.musb*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.cppi41_dma_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_chan*, align 8
  %12 = alloca %struct.dma_channel*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cppi41_dma_controller* %0, %struct.cppi41_dma_controller** %3, align 8
  %16 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %3, align 8
  %17 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.musb*, %struct.musb** %18, align 8
  store %struct.musb* %19, %struct.musb** %4, align 8
  %20 = load %struct.musb*, %struct.musb** %4, align 8
  %21 = getelementptr inbounds %struct.musb, %struct.musb* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %5, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.device_node*, %struct.device_node** %26, align 8
  store %struct.device_node* %27, %struct.device_node** %6, align 8
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = call i32 @of_property_count_strings(%struct.device_node* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %156

34:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %148, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %151

39:                                               ; preds = %35
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @of_property_read_string_index(%struct.device_node* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %41, i8** %13)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %152

46:                                               ; preds = %39
  %47 = load i8*, i8** %13, align 8
  %48 = call i64 @strstarts(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %14, align 4
  br label %61

51:                                               ; preds = %46
  %52 = load i8*, i8** %13, align 8
  %53 = call i64 @strstarts(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  br label %60

56:                                               ; preds = %51
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %152

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = call i32 @kstrtouint(i8* %63, i32 0, i32* %15)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %152

68:                                               ; preds = %61
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %3, align 8
  %73 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ugt i32 %71, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76, %68
  br label %152

80:                                               ; preds = %76
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %3, align 8
  %85 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %84, i32 0, i32 2
  %86 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sub i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %86, i64 %89
  store %struct.cppi41_dma_channel* %90, %struct.cppi41_dma_channel** %7, align 8
  br label %99

91:                                               ; preds = %80
  %92 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %3, align 8
  %93 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %92, i32 0, i32 1
  %94 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %93, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sub i32 %95, 1
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %94, i64 %97
  store %struct.cppi41_dma_channel* %98, %struct.cppi41_dma_channel** %7, align 8
  br label %99

99:                                               ; preds = %91, %83
  %100 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %3, align 8
  %101 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %7, align 8
  %102 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %101, i32 0, i32 5
  store %struct.cppi41_dma_controller* %100, %struct.cppi41_dma_controller** %102, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %7, align 8
  %105 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %7, align 8
  %108 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %7, align 8
  %110 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %109, i32 0, i32 4
  %111 = call i32 @INIT_LIST_HEAD(i32* %110)
  %112 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %7, align 8
  %113 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %112, i32 0, i32 3
  store %struct.dma_channel* %113, %struct.dma_channel** %12, align 8
  %114 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %7, align 8
  %115 = load %struct.dma_channel*, %struct.dma_channel** %12, align 8
  %116 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %115, i32 0, i32 2
  store %struct.cppi41_dma_channel* %114, %struct.cppi41_dma_channel** %116, align 8
  %117 = load i32, i32* @MUSB_DMA_STATUS_FREE, align 4
  %118 = load %struct.dma_channel*, %struct.dma_channel** %12, align 8
  %119 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @SZ_4M, align 4
  %121 = load %struct.dma_channel*, %struct.dma_channel** %12, align 8
  %122 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = getelementptr inbounds %struct.device, %struct.device* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = call %struct.dma_chan* @dma_request_chan(%struct.TYPE_4__* %125, i8* %126)
  store %struct.dma_chan* %127, %struct.dma_chan** %11, align 8
  %128 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %129 = call i64 @IS_ERR(%struct.dma_chan* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %99
  %132 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %133 = call i32 @PTR_ERR(%struct.dma_chan* %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @EPROBE_DEFER, align 4
  %136 = sub nsw i32 0, %135
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.device*, %struct.device** %5, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %131
  br label %152

144:                                              ; preds = %99
  %145 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %146 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %7, align 8
  %147 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %146, i32 0, i32 2
  store %struct.dma_chan* %145, %struct.dma_chan** %147, align 8
  br label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %35

151:                                              ; preds = %35
  store i32 0, i32* %2, align 4
  br label %156

152:                                              ; preds = %143, %79, %67, %56, %45
  %153 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %3, align 8
  %154 = call i32 @cppi41_release_all_dma_chans(%struct.cppi41_dma_controller* %153)
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %152, %151, %32
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @of_property_count_strings(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i64 @strstarts(i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, ...) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.dma_chan* @dma_request_chan(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dma_chan*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_chan*) #1

declare dso_local i32 @cppi41_release_all_dma_chans(%struct.cppi41_dma_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
