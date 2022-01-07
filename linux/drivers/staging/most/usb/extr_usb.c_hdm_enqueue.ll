; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.mbo = type { i64, i8*, i32 }
%struct.most_dev = type { i32, %struct.TYPE_4__*, i32*, i32*, i64*, %struct.most_channel_config* }
%struct.TYPE_4__ = type { i32 }
%struct.most_channel_config = type { i32, i64, i64 }
%struct.urb = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ECHRNG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NO_ISOCHRONOUS_URB = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MOST_CH_TX = common dso_local global i32 0, align 4
@hdm_write_completion = common dso_local global i32 0, align 4
@MOST_CH_ISOC = common dso_local global i64 0, align 8
@MOST_CH_SYNC = common dso_local global i64 0, align 8
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@hdm_read_completion = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"URB submit failed with error %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32, %struct.mbo*)* @hdm_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdm_enqueue(%struct.most_interface* %0, i32 %1, %struct.mbo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.most_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbo*, align 8
  %8 = alloca %struct.most_dev*, align 8
  %9 = alloca %struct.most_channel_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.urb*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mbo* %2, %struct.mbo** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %15 = icmp ne %struct.most_interface* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.mbo*, %struct.mbo** %7, align 8
  %18 = icmp ne %struct.mbo* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ true, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %218

28:                                               ; preds = %20
  %29 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %30 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i1 [ true, %28 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ECHRNG, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %218

45:                                               ; preds = %37
  %46 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %47 = call %struct.most_dev* @to_mdev(%struct.most_interface* %46)
  store %struct.most_dev* %47, %struct.most_dev** %8, align 8
  %48 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %49 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %48, i32 0, i32 5
  %50 = load %struct.most_channel_config*, %struct.most_channel_config** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %50, i64 %52
  store %struct.most_channel_config* %53, %struct.most_channel_config** %9, align 8
  %54 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %55 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %58 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %45
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %213

64:                                               ; preds = %45
  %65 = load i32, i32* @NO_ISOCHRONOUS_URB, align 4
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call %struct.urb* @usb_alloc_urb(i32 %65, i32 %66)
  store %struct.urb* %67, %struct.urb** %11, align 8
  %68 = load %struct.urb*, %struct.urb** %11, align 8
  %69 = icmp ne %struct.urb* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %213

73:                                               ; preds = %64
  %74 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %75 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MOST_CH_TX, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %73
  %81 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %82 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %81, i32 0, i32 4
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.mbo*, %struct.mbo** %7, align 8
  %93 = call i64 @hdm_add_padding(%struct.most_dev* %90, i32 %91, %struct.mbo* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %210

98:                                               ; preds = %89, %80, %73
  %99 = load %struct.mbo*, %struct.mbo** %7, align 8
  %100 = getelementptr inbounds %struct.mbo, %struct.mbo* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.urb*, %struct.urb** %11, align 8
  %103 = getelementptr inbounds %struct.urb, %struct.urb* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.mbo*, %struct.mbo** %7, align 8
  %105 = getelementptr inbounds %struct.mbo, %struct.mbo* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %13, align 8
  %107 = load %struct.mbo*, %struct.mbo** %7, align 8
  %108 = getelementptr inbounds %struct.mbo, %struct.mbo* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %12, align 8
  %110 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %111 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @MOST_CH_TX, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %98
  %117 = load %struct.urb*, %struct.urb** %11, align 8
  %118 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %119 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %122 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %125 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @usb_sndbulkpipe(%struct.TYPE_4__* %123, i32 %130)
  %132 = load i8*, i8** %13, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load i32, i32* @hdm_write_completion, align 4
  %135 = load %struct.mbo*, %struct.mbo** %7, align 8
  %136 = call i32 @usb_fill_bulk_urb(%struct.urb* %117, %struct.TYPE_4__* %120, i32 %131, i8* %132, i64 %133, i32 %134, %struct.mbo* %135)
  %137 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %138 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @MOST_CH_ISOC, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %116
  %143 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %144 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MOST_CH_SYNC, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load i32, i32* @URB_ZERO_PACKET, align 4
  %150 = load %struct.urb*, %struct.urb** %11, align 8
  %151 = getelementptr inbounds %struct.urb, %struct.urb* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %142, %116
  br label %180

155:                                              ; preds = %98
  %156 = load %struct.urb*, %struct.urb** %11, align 8
  %157 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %158 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %161 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %160, i32 0, i32 1
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %164 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @usb_rcvbulkpipe(%struct.TYPE_4__* %162, i32 %169)
  %171 = load i8*, i8** %13, align 8
  %172 = load i64, i64* %12, align 8
  %173 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %174 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %172, %175
  %177 = load i32, i32* @hdm_read_completion, align 4
  %178 = load %struct.mbo*, %struct.mbo** %7, align 8
  %179 = call i32 @usb_fill_bulk_urb(%struct.urb* %156, %struct.TYPE_4__* %159, i32 %170, i8* %171, i64 %176, i32 %177, %struct.mbo* %178)
  br label %180

180:                                              ; preds = %155, %154
  %181 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %182 = load %struct.urb*, %struct.urb** %11, align 8
  %183 = getelementptr inbounds %struct.urb, %struct.urb* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load %struct.urb*, %struct.urb** %11, align 8
  %187 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %188 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = call i32 @usb_anchor_urb(%struct.urb* %186, i32* %192)
  %194 = load %struct.urb*, %struct.urb** %11, align 8
  %195 = load i32, i32* @GFP_KERNEL, align 4
  %196 = call i32 @usb_submit_urb(%struct.urb* %194, i32 %195)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %180
  %200 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %201 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %200, i32 0, i32 1
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @dev_err(i32* %203, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %204)
  br label %207

206:                                              ; preds = %180
  br label %213

207:                                              ; preds = %199
  %208 = load %struct.urb*, %struct.urb** %11, align 8
  %209 = call i32 @usb_unanchor_urb(%struct.urb* %208)
  br label %210

210:                                              ; preds = %207, %95
  %211 = load %struct.urb*, %struct.urb** %11, align 8
  %212 = call i32 @usb_free_urb(%struct.urb* %211)
  br label %213

213:                                              ; preds = %210, %206, %70, %61
  %214 = load %struct.most_dev*, %struct.most_dev** %8, align 8
  %215 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %214, i32 0, i32 0
  %216 = call i32 @mutex_unlock(i32* %215)
  %217 = load i32, i32* %10, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %213, %42, %25
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.most_dev* @to_mdev(%struct.most_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i64 @hdm_add_padding(%struct.most_dev*, i32, %struct.mbo*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.TYPE_4__*, i32, i8*, i64, i32, %struct.mbo*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
