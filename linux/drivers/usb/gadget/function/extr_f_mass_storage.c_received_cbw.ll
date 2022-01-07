; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_received_cbw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_received_cbw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i32, i32, %struct.fsg_common* }
%struct.fsg_common = type { i64, i64, i64, i32, i32*, i32**, i32, i32, i64 }
%struct.fsg_buffhd = type { %struct.usb_request* }
%struct.usb_request = type { i64, i64, %struct.bulk_cb_wrap* }
%struct.bulk_cb_wrap = type { i64, i64, i32, i64, i64, i32, i32 }

@IGNORE_BULK_OUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@US_BULK_CB_WRAP_LEN = common dso_local global i64 0, align 8
@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid CBW: len %u sig 0x%x\0A\00", align 1
@US_BULK_FLAG_IN = common dso_local global i32 0, align 4
@MAX_COMMAND_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"non-meaningful CBW: lun = %u, flags = 0x%x, cmdlen %u\0A\00", align 1
@DATA_DIR_TO_HOST = common dso_local global i32 0, align 4
@DATA_DIR_FROM_HOST = common dso_local global i32 0, align 4
@DATA_DIR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, %struct.fsg_buffhd*)* @received_cbw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @received_cbw(%struct.fsg_dev* %0, %struct.fsg_buffhd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_dev*, align 8
  %5 = alloca %struct.fsg_buffhd*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca %struct.bulk_cb_wrap*, align 8
  %8 = alloca %struct.fsg_common*, align 8
  store %struct.fsg_dev* %0, %struct.fsg_dev** %4, align 8
  store %struct.fsg_buffhd* %1, %struct.fsg_buffhd** %5, align 8
  %9 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %10 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %9, i32 0, i32 0
  %11 = load %struct.usb_request*, %struct.usb_request** %10, align 8
  store %struct.usb_request* %11, %struct.usb_request** %6, align 8
  %12 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %13 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %12, i32 0, i32 2
  %14 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %13, align 8
  store %struct.bulk_cb_wrap* %14, %struct.bulk_cb_wrap** %7, align 8
  %15 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %16 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %15, i32 0, i32 2
  %17 = load %struct.fsg_common*, %struct.fsg_common** %16, align 8
  store %struct.fsg_common* %17, %struct.fsg_common** %8, align 8
  %18 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %19 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IGNORE_BULK_OUT, align 4
  %24 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %25 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %24, i32 0, i32 1
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %197

31:                                               ; preds = %22
  %32 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %33 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @US_BULK_CB_WRAP_LEN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %39 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %42 = call i64 @cpu_to_le32(i32 %41)
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %37, %31
  %45 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %46 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %47 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %50 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @le32_to_cpu(i64 %51)
  %53 = trunc i64 %52 to i32
  %54 = call i32 (%struct.fsg_dev*, i8*, i64, i32, ...) @DBG(%struct.fsg_dev* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %48, i32 %53)
  %55 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %56 = call i32 @wedge_bulk_in_endpoint(%struct.fsg_dev* %55)
  %57 = load i32, i32* @IGNORE_BULK_OUT, align 4
  %58 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %59 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %58, i32 0, i32 1
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %197

63:                                               ; preds = %37
  %64 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %65 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %68 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %67, i32 0, i32 5
  %69 = load i32**, i32*** %68, align 8
  %70 = call i64 @ARRAY_SIZE(i32** %69)
  %71 = icmp sge i64 %66, %70
  br i1 %71, label %91, label %72

72:                                               ; preds = %63
  %73 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %74 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @US_BULK_FLAG_IN, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %72
  %81 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %82 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp sle i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %87 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MAX_COMMAND_SIZE, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %85, %80, %72, %63
  %92 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %93 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %94 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %97 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %100 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (%struct.fsg_dev*, i8*, i64, i32, ...) @DBG(%struct.fsg_dev* %92, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %95, i32 %98, i64 %101)
  %103 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %104 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %91
  %108 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %109 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %110 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @fsg_set_halt(%struct.fsg_dev* %108, i32 %111)
  %113 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %114 = call i32 @halt_bulk_in_endpoint(%struct.fsg_dev* %113)
  br label %115

115:                                              ; preds = %107, %91
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %197

118:                                              ; preds = %85
  %119 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %120 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %123 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %125 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %128 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %131 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @memcpy(i32 %126, i32 %129, i64 %132)
  %134 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %135 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @US_BULK_FLAG_IN, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %118
  %141 = load i32, i32* @DATA_DIR_TO_HOST, align 4
  %142 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %143 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 8
  br label %148

144:                                              ; preds = %118
  %145 = load i32, i32* @DATA_DIR_FROM_HOST, align 4
  %146 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %147 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %146, i32 0, i32 6
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %140
  %149 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %150 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @le32_to_cpu(i64 %151)
  %153 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %154 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %156 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %148
  %160 = load i32, i32* @DATA_DIR_NONE, align 4
  %161 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %162 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %161, i32 0, i32 6
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %159, %148
  %164 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %165 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %168 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  %169 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %170 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %173 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %172, i32 0, i32 5
  %174 = load i32**, i32*** %173, align 8
  %175 = call i64 @ARRAY_SIZE(i32** %174)
  %176 = icmp slt i64 %171, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %163
  %178 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %179 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %178, i32 0, i32 5
  %180 = load i32**, i32*** %179, align 8
  %181 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %182 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i32*, i32** %180, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %187 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %186, i32 0, i32 4
  store i32* %185, i32** %187, align 8
  br label %191

188:                                              ; preds = %163
  %189 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %190 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %189, i32 0, i32 4
  store i32* null, i32** %190, align 8
  br label %191

191:                                              ; preds = %188, %177
  %192 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %193 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %196 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 8
  store i32 0, i32* %3, align 4
  br label %197

197:                                              ; preds = %191, %115, %44, %28
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*, i64, i32, ...) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @wedge_bulk_in_endpoint(%struct.fsg_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @fsg_set_halt(%struct.fsg_dev*, i32) #1

declare dso_local i32 @halt_bulk_in_endpoint(%struct.fsg_dev*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
