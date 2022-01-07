; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_command_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_command_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.urb = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"could not get a buffer to write %d commands totaling %d bytes to the Uxxx\0A\00", align 1
@ftdi_elan_write_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" ..\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"failed %d to submit urb %p to write %d commands totaling %d bytes to the Uxxx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_command_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_command_engine(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [124 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  %15 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %16 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %19 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %165

25:                                               ; preds = %1
  %26 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ftdi_elan_total_command_size(%struct.usb_ftdi* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %29)
  store %struct.urb* %30, %struct.urb** %8, align 8
  %31 = load %struct.urb*, %struct.urb** %8, align 8
  %32 = icmp ne %struct.urb* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %165

36:                                               ; preds = %25
  %37 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %38 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load %struct.urb*, %struct.urb** %8, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 0
  %44 = call i8* @usb_alloc_coherent(%struct.TYPE_5__* %39, i32 %40, i32 %41, i32* %43)
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %36
  %48 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %49 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.urb*, %struct.urb** %8, align 8
  %56 = call i32 @usb_free_urb(%struct.urb* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %165

59:                                               ; preds = %36
  %60 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @fill_buffer_with_all_queued_commands(%struct.usb_ftdi* %60, i8* %61, i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.urb*, %struct.urb** %8, align 8
  %66 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %67 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %70 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %73 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @usb_sndbulkpipe(%struct.TYPE_5__* %71, i32 %74)
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @ftdi_elan_write_bulk_callback, align 4
  %79 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %80 = call i32 @usb_fill_bulk_urb(%struct.urb* %65, %struct.TYPE_5__* %68, i32 %75, i8* %76, i32 %77, i32 %78, %struct.usb_ftdi* %79)
  %81 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %82 = load %struct.urb*, %struct.urb** %8, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %127

88:                                               ; preds = %59
  %89 = getelementptr inbounds [124 x i8], [124 x i8]* %10, i64 0, i64 0
  store i8* %89, i8** %11, align 8
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %12, align 4
  %91 = load i8*, i8** %5, align 8
  store i8* %91, i8** %13, align 8
  store i32 41, i32* %14, align 4
  %92 = getelementptr inbounds [124 x i8], [124 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %92, align 16
  br label %93

93:                                               ; preds = %125, %88
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %14, align 4
  %96 = icmp sgt i32 %94, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %12, align 4
  %100 = icmp sgt i32 %98, 0
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi i1 [ false, %93 ], [ %100, %97 ]
  br i1 %102, label %103, label %126

103:                                              ; preds = %101
  %104 = load i32, i32* %14, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106, %103
  %110 = load i8*, i8** %11, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %13, align 8
  %113 = load i8, i8* %111, align 1
  %114 = sext i8 %113 to i32
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %11, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %11, align 8
  br label %125

119:                                              ; preds = %106
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 (i8*, i8*, ...) @sprintf(i8* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i8*, i8** %11, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %11, align 8
  br label %125

125:                                              ; preds = %119, %109
  br label %93

126:                                              ; preds = %101
  br label %127

127:                                              ; preds = %126, %59
  %128 = load %struct.urb*, %struct.urb** %8, align 8
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i32 @usb_submit_urb(%struct.urb* %128, i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %127
  %134 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %135 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %134, i32 0, i32 2
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.urb*, %struct.urb** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %137, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 %138, %struct.urb* %139, i32 %140, i32 %141)
  %143 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %144 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %143, i32 0, i32 2
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i8*, i8** %5, align 8
  %148 = load %struct.urb*, %struct.urb** %8, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @usb_free_coherent(%struct.TYPE_5__* %145, i32 %146, i8* %147, i32 %150)
  %152 = load %struct.urb*, %struct.urb** %8, align 8
  %153 = call i32 @usb_free_urb(%struct.urb* %152)
  %154 = load i32, i32* %4, align 4
  store i32 %154, i32* %2, align 4
  br label %165

155:                                              ; preds = %127
  %156 = load %struct.urb*, %struct.urb** %8, align 8
  %157 = call i32 @usb_free_urb(%struct.urb* %156)
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %160 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %164 = call i32 @ftdi_elan_kick_respond_queue(%struct.usb_ftdi* %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %155, %133, %47, %33, %24
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @ftdi_elan_total_command_size(%struct.usb_ftdi*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @usb_alloc_coherent(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @fill_buffer_with_all_queued_commands(%struct.usb_ftdi*, i8*, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.TYPE_5__*, i32, i8*, i32, i32, %struct.usb_ftdi*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_free_coherent(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @ftdi_elan_kick_respond_queue(%struct.usb_ftdi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
