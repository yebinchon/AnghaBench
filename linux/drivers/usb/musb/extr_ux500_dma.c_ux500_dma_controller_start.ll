; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500_dma.c_ux500_dma_controller_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500_dma.c_ux500_dma_controller_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ux500_dma_controller = type { %struct.ux500_dma_channel*, %struct.ux500_dma_channel*, %struct.musb* }
%struct.ux500_dma_channel = type { i64, i32, i64, %struct.dma_channel, %struct.ux500_dma_controller* }
%struct.dma_channel = type { i32, i32, %struct.ux500_dma_channel* }
%struct.musb = type { %struct.device* }
%struct.device = type { i32 }
%struct.musb_hdrc_platform_data = type { %struct.ux500_musb_board_data* }
%struct.ux500_musb_board_data = type { i8**, i8**, i32* }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@iep_chan_names = common dso_local global i64 0, align 8
@UX500_MUSB_DMA_NUM_RX_TX_CHANNELS = common dso_local global i64 0, align 8
@MUSB_DMA_STATUS_FREE = common dso_local global i32 0, align 4
@SZ_16M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Dma pipe allocation error dir=%d ch=%d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@oep_chan_names = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ux500_dma_controller*)* @ux500_dma_controller_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ux500_dma_controller_start(%struct.ux500_dma_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ux500_dma_controller*, align 8
  %4 = alloca %struct.ux500_dma_channel*, align 8
  %5 = alloca %struct.musb*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.musb_hdrc_platform_data*, align 8
  %8 = alloca %struct.ux500_musb_board_data*, align 8
  %9 = alloca %struct.dma_channel*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca %struct.ux500_dma_channel*, align 8
  %16 = alloca i32, align 4
  store %struct.ux500_dma_controller* %0, %struct.ux500_dma_controller** %3, align 8
  store %struct.ux500_dma_channel* null, %struct.ux500_dma_channel** %4, align 8
  %17 = load %struct.ux500_dma_controller*, %struct.ux500_dma_controller** %3, align 8
  %18 = getelementptr inbounds %struct.ux500_dma_controller, %struct.ux500_dma_controller* %17, i32 0, i32 2
  %19 = load %struct.musb*, %struct.musb** %18, align 8
  store %struct.musb* %19, %struct.musb** %5, align 8
  %20 = load %struct.musb*, %struct.musb** %5, align 8
  %21 = getelementptr inbounds %struct.musb, %struct.musb* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %6, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call %struct.musb_hdrc_platform_data* @dev_get_platdata(%struct.device* %23)
  store %struct.musb_hdrc_platform_data* %24, %struct.musb_hdrc_platform_data** %7, align 8
  store %struct.dma_channel* null, %struct.dma_channel** %9, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %7, align 8
  %26 = icmp ne %struct.musb_hdrc_platform_data* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %1
  %28 = load %struct.musb*, %struct.musb** %5, align 8
  %29 = getelementptr inbounds %struct.musb, %struct.musb* %28, i32 0, i32 0
  %30 = load %struct.device*, %struct.device** %29, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %161

34:                                               ; preds = %1
  %35 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %7, align 8
  %36 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %35, i32 0, i32 0
  %37 = load %struct.ux500_musb_board_data*, %struct.ux500_musb_board_data** %36, align 8
  store %struct.ux500_musb_board_data* %37, %struct.ux500_musb_board_data** %8, align 8
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @dma_cap_zero(i32 %38)
  %40 = load i32, i32* @DMA_SLAVE, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @dma_cap_set(i32 %40, i32 %41)
  %43 = load %struct.ux500_dma_controller*, %struct.ux500_dma_controller** %3, align 8
  %44 = getelementptr inbounds %struct.ux500_dma_controller, %struct.ux500_dma_controller* %43, i32 0, i32 1
  %45 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %44, align 8
  store %struct.ux500_dma_channel* %45, %struct.ux500_dma_channel** %15, align 8
  %46 = load %struct.ux500_musb_board_data*, %struct.ux500_musb_board_data** %8, align 8
  %47 = icmp ne %struct.ux500_musb_board_data* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load %struct.ux500_musb_board_data*, %struct.ux500_musb_board_data** %8, align 8
  %50 = getelementptr inbounds %struct.ux500_musb_board_data, %struct.ux500_musb_board_data* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  br label %53

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i8** [ %51, %48 ], [ null, %52 ]
  store i8** %54, i8*** %14, align 8
  %55 = load i64, i64* @iep_chan_names, align 8
  %56 = inttoptr i64 %55 to i8**
  store i8** %56, i8*** %10, align 8
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %157, %53
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %160

60:                                               ; preds = %57
  store i64 0, i64* %11, align 8
  br label %61

61:                                               ; preds = %139, %60
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @UX500_MUSB_DMA_NUM_RX_TX_CHANNELS, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %142

65:                                               ; preds = %61
  %66 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %15, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %66, i64 %67
  store %struct.ux500_dma_channel* %68, %struct.ux500_dma_channel** %4, align 8
  %69 = load %struct.ux500_dma_controller*, %struct.ux500_dma_controller** %3, align 8
  %70 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %71 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %70, i32 0, i32 4
  store %struct.ux500_dma_controller* %69, %struct.ux500_dma_controller** %71, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %74 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %77 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %79 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %78, i32 0, i32 3
  store %struct.dma_channel* %79, %struct.dma_channel** %9, align 8
  %80 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %81 = load %struct.dma_channel*, %struct.dma_channel** %9, align 8
  %82 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %81, i32 0, i32 2
  store %struct.ux500_dma_channel* %80, %struct.ux500_dma_channel** %82, align 8
  %83 = load i32, i32* @MUSB_DMA_STATUS_FREE, align 4
  %84 = load %struct.dma_channel*, %struct.dma_channel** %9, align 8
  %85 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @SZ_16M, align 4
  %87 = load %struct.dma_channel*, %struct.dma_channel** %9, align 8
  %88 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = load i8**, i8*** %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @dma_request_slave_channel(%struct.device* %89, i8* %93)
  %95 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %96 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %98 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %125, label %101

101:                                              ; preds = %65
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.ux500_musb_board_data*, %struct.ux500_musb_board_data** %8, align 8
  %104 = icmp ne %struct.ux500_musb_board_data* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct.ux500_musb_board_data*, %struct.ux500_musb_board_data** %8, align 8
  %107 = getelementptr inbounds %struct.ux500_musb_board_data, %struct.ux500_musb_board_data* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  br label %110

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi i32* [ %108, %105 ], [ null, %109 ]
  %112 = load i8**, i8*** %14, align 8
  %113 = icmp ne i8** %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i8**, i8*** %14, align 8
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds i8*, i8** %115, i64 %116
  %118 = load i8*, i8** %117, align 8
  br label %120

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %114
  %121 = phi i8* [ %118, %114 ], [ null, %119 ]
  %122 = call i64 @dma_request_channel(i32 %102, i32* %111, i8* %121)
  %123 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %124 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %120, %65
  %126 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %4, align 8
  %127 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %12, align 4
  %132 = load i64, i64* %11, align 8
  %133 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %131, i64 %132)
  %134 = load %struct.ux500_dma_controller*, %struct.ux500_dma_controller** %3, align 8
  %135 = call i32 @ux500_dma_controller_stop(%struct.ux500_dma_controller* %134)
  %136 = load i32, i32* @EBUSY, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %161

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %11, align 8
  br label %61

142:                                              ; preds = %61
  %143 = load %struct.ux500_dma_controller*, %struct.ux500_dma_controller** %3, align 8
  %144 = getelementptr inbounds %struct.ux500_dma_controller, %struct.ux500_dma_controller* %143, i32 0, i32 0
  %145 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %144, align 8
  store %struct.ux500_dma_channel* %145, %struct.ux500_dma_channel** %15, align 8
  %146 = load %struct.ux500_musb_board_data*, %struct.ux500_musb_board_data** %8, align 8
  %147 = icmp ne %struct.ux500_musb_board_data* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load %struct.ux500_musb_board_data*, %struct.ux500_musb_board_data** %8, align 8
  %150 = getelementptr inbounds %struct.ux500_musb_board_data, %struct.ux500_musb_board_data* %149, i32 0, i32 1
  %151 = load i8**, i8*** %150, align 8
  br label %153

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %148
  %154 = phi i8** [ %151, %148 ], [ null, %152 ]
  store i8** %154, i8*** %14, align 8
  %155 = load i64, i64* @oep_chan_names, align 8
  %156 = inttoptr i64 %155 to i8**
  store i8** %156, i8*** %10, align 8
  store i32 1, i32* %13, align 4
  br label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %57

160:                                              ; preds = %57
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %130, %27
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.musb_hdrc_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i64 @dma_request_slave_channel(%struct.device*, i8*) #1

declare dso_local i64 @dma_request_channel(i32, i32*, i8*) #1

declare dso_local i32 @ERR(i8*, i32, i64) #1

declare dso_local i32 @ux500_dma_controller_stop(%struct.ux500_dma_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
