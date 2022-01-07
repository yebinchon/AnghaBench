; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i64, i32, i8*, i32, i32, i32, i8*, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to allocate ep0 trb\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DWC3_EP0_SETUP_SIZE = common dso_local global i32 0, align 4
@DWC3_BOUNCE_SIZE = common dso_local global i32 0, align 4
@dwc3_gadget_ops = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"dwc3-gadget\00", align 1
@DWC3_REVISION_220A = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"changing max_speed on rev %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to register udc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc3_gadget_init(%struct.dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  %6 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %7 = call i32 @dwc3_gadget_get_irq(%struct.dwc3* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %4, align 4
  br label %172

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %15 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @dma_alloc_coherent(i32 %18, i32 2, i32* %20, i32 %21)
  %23 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %24 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %12
  %30 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %31 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %172

36:                                               ; preds = %12
  %37 = load i32, i32* @DWC3_EP0_SETUP_SIZE, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32 @kzalloc(i32 %37, i32 %38)
  %40 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %41 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %43 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %161

49:                                               ; preds = %36
  %50 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %51 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DWC3_BOUNCE_SIZE, align 4
  %54 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %55 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %54, i32 0, i32 6
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @dma_alloc_coherent(i32 %52, i32 %53, i32* %55, i32 %56)
  %58 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %59 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %61 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %60, i32 0, i32 7
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %49
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %156

67:                                               ; preds = %49
  %68 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %69 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %68, i32 0, i32 13
  %70 = call i32 @init_completion(i32* %69)
  %71 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %72 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  store i32* @dwc3_gadget_ops, i32** %73, align 8
  %74 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %75 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %76 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  store i32 %74, i32* %77, align 8
  %78 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %79 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %82 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %83, align 8
  %84 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %85 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %84, i32 0, i32 9
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  %87 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %88 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DWC3_REVISION_220A, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %67
  %93 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %94 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %93, i32 0, i32 12
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %99 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %102 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @dev_info(i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %97, %92, %67
  %106 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %107 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %110 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 4
  %112 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %113 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %114 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dwc3_gadget_init_endpoints(%struct.dwc3* %112, i32 %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %105
  br label %144

120:                                              ; preds = %105
  %121 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %122 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %125 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %124, i32 0, i32 9
  %126 = call i32 @usb_add_gadget_udc(i32 %123, %struct.TYPE_3__* %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %131 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %130, i32 0, i32 10
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %141

134:                                              ; preds = %120
  %135 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %136 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %135, i32 0, i32 9
  %137 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %138 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @dwc3_gadget_set_speed(%struct.TYPE_3__* %136, i32 %139)
  store i32 0, i32* %2, align 4
  br label %174

141:                                              ; preds = %129
  %142 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %143 = call i32 @dwc3_gadget_free_endpoints(%struct.dwc3* %142)
  br label %144

144:                                              ; preds = %141, %119
  %145 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %146 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @DWC3_BOUNCE_SIZE, align 4
  %149 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %150 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %149, i32 0, i32 7
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %153 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dma_free_coherent(i32 %147, i32 %148, i8* %151, i32 %154)
  br label %156

156:                                              ; preds = %144, %64
  %157 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %158 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @kfree(i32 %159)
  br label %161

161:                                              ; preds = %156, %46
  %162 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %163 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %166 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %165, i32 0, i32 3
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %169 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dma_free_coherent(i32 %164, i32 2, i8* %167, i32 %170)
  br label %172

172:                                              ; preds = %161, %29, %10
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %172, %134
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @dwc3_gadget_get_irq(%struct.dwc3*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @dwc3_gadget_init_endpoints(%struct.dwc3*, i32) #1

declare dso_local i32 @usb_add_gadget_udc(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dwc3_gadget_set_speed(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dwc3_gadget_free_endpoints(%struct.dwc3*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
