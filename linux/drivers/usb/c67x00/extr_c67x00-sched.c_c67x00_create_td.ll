; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_create_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_create_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i32, %struct.c67x00_urb_priv* }
%struct.c67x00_urb_priv = type { i32, i32 }
%struct.c67x00_td = type { i32, i32, i32, i32, i32, i64, i32, %struct.urb*, i8*, i8*, i64, i64, i32, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i64 }

@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@PREAMBLE_EN = common dso_local global i32 0, align 4
@TT_ISOCHRONOUS = common dso_local global i32 0, align 4
@ISO_EN = common dso_local global i32 0, align 4
@TT_CONTROL = common dso_local global i32 0, align 4
@TT_BULK = common dso_local global i32 0, align 4
@TT_INTERRUPT = common dso_local global i32 0, align 4
@SEQ_SEL = common dso_local global i32 0, align 4
@ARM_EN = common dso_local global i32 0, align 4
@CY_TD_SIZE = common dso_local global i32 0, align 4
@TD_PIDEP_OFFSET = common dso_local global i32 0, align 4
@TT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c67x00_hcd*, %struct.urb*, i8*, i32, i32, i32, i64)* @c67x00_create_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_create_td(%struct.c67x00_hcd* %0, %struct.urb* %1, i8* %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.c67x00_hcd*, align 8
  %10 = alloca %struct.urb*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.c67x00_td*, align 8
  %17 = alloca %struct.c67x00_urb_priv*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %9, align 8
  store %struct.urb* %1, %struct.urb** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %22 = load %struct.urb*, %struct.urb** %10, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 1
  %24 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %23, align 8
  store %struct.c67x00_urb_priv* %24, %struct.c67x00_urb_priv** %17, align 8
  store i32 1, i32* %18, align 4
  store i32 3, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %25 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %9, align 8
  %26 = load %struct.urb*, %struct.urb** %10, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.urb*, %struct.urb** %10, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @usb_pipeisoc(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %7
  %34 = load %struct.urb*, %struct.urb** %10, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @usb_pipeint(i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %33, %7
  %40 = phi i1 [ true, %7 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @c67x00_claim_frame_bw(%struct.c67x00_hcd* %25, %struct.urb* %26, i32 %27, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EMSGSIZE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %208

47:                                               ; preds = %39
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call %struct.c67x00_td* @kzalloc(i32 112, i32 %48)
  store %struct.c67x00_td* %49, %struct.c67x00_td** %16, align 8
  %50 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %51 = icmp ne %struct.c67x00_td* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %208

55:                                               ; preds = %47
  %56 = load %struct.urb*, %struct.urb** %10, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %60 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %59, i32 0, i32 12
  store i32 %58, i32* %60, align 8
  %61 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %17, align 8
  %62 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %65 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %64, i32 0, i32 15
  store i32 %63, i32* %65, align 8
  %66 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %67 = call %struct.TYPE_4__* @td_udev(%struct.c67x00_td* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @USB_SPEED_LOW, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %55
  %73 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %9, align 8
  %74 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %17, align 8
  %77 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 1, %78
  %80 = and i32 %75, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* @PREAMBLE_EN, align 4
  %84 = load i32, i32* %20, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %20, align 4
  br label %86

86:                                               ; preds = %82, %72, %55
  %87 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %88 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @usb_pipetype(i32 %89)
  switch i32 %90, label %102 [
    i32 128, label %91
    i32 130, label %96
    i32 131, label %98
    i32 129, label %100
  ]

91:                                               ; preds = %86
  %92 = load i32, i32* @TT_ISOCHRONOUS, align 4
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* @ISO_EN, align 4
  %94 = load i32, i32* %20, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %20, align 4
  br label %102

96:                                               ; preds = %86
  %97 = load i32, i32* @TT_CONTROL, align 4
  store i32 %97, i32* %21, align 4
  br label %102

98:                                               ; preds = %86
  %99 = load i32, i32* @TT_BULK, align 4
  store i32 %99, i32* %21, align 4
  br label %102

100:                                              ; preds = %86
  %101 = load i32, i32* @TT_INTERRUPT, align 4
  store i32 %101, i32* %21, align 4
  br label %102

102:                                              ; preds = %86, %100, %98, %96, %91
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @SEQ_SEL, align 4
  %107 = load i32, i32* %20, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %20, align 4
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i32, i32* @ARM_EN, align 4
  %111 = load i32, i32* %20, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %20, align 4
  %113 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %9, align 8
  %114 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %117 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %9, align 8
  %119 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CY_TD_SIZE, align 4
  %122 = add nsw i32 %120, %121
  %123 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %9, align 8
  %124 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %9, align 8
  %126 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @__cpu_to_le16(i32 %127)
  %129 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %130 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %129, i32 0, i32 14
  store i8* %128, i8** %130, align 8
  %131 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %9, align 8
  %132 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %131, i32 0, i32 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 15
  %137 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %17, align 8
  %138 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 14
  %141 = or i32 %136, %140
  %142 = load i32, i32* %12, align 4
  %143 = and i32 %142, 1023
  %144 = or i32 %141, %143
  %145 = call i8* @__cpu_to_le16(i32 %144)
  %146 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %147 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %146, i32 0, i32 13
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* %13, align 4
  %149 = and i32 %148, 15
  %150 = load i32, i32* @TD_PIDEP_OFFSET, align 4
  %151 = shl i32 %149, %150
  %152 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %153 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %152, i32 0, i32 12
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @usb_pipeendpoint(i32 %154)
  %156 = and i32 %155, 15
  %157 = or i32 %151, %156
  %158 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %159 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %161 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @usb_pipedevice(i32 %162)
  %164 = and i32 %163, 127
  %165 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %166 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* %20, align 4
  %168 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %169 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  %170 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %171 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %170, i32 0, i32 11
  store i64 0, i64* %171, align 8
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* @TT_OFFSET, align 4
  %174 = shl i32 %172, %173
  %175 = or i32 %174, 16
  %176 = or i32 %175, 3
  %177 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %178 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  %179 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %180 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %179, i32 0, i32 10
  store i64 0, i64* %180, align 8
  %181 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %9, align 8
  %182 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @__cpu_to_le16(i32 %183)
  %185 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %186 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %185, i32 0, i32 9
  store i8* %184, i8** %186, align 8
  %187 = load i8*, i8** %11, align 8
  %188 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %189 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %188, i32 0, i32 8
  store i8* %187, i8** %189, align 8
  %190 = load %struct.urb*, %struct.urb** %10, align 8
  %191 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %192 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %191, i32 0, i32 7
  store %struct.urb* %190, %struct.urb** %192, align 8
  %193 = load i64, i64* %15, align 8
  %194 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %195 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %194, i32 0, i32 5
  store i64 %193, i64* %195, align 8
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  %198 = and i32 %197, -2
  %199 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %9, align 8
  %200 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.c67x00_td*, %struct.c67x00_td** %16, align 8
  %204 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %203, i32 0, i32 6
  %205 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %9, align 8
  %206 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %205, i32 0, i32 3
  %207 = call i32 @list_add_tail(i32* %204, i32* %206)
  store i32 0, i32* %8, align 4
  br label %208

208:                                              ; preds = %109, %52, %44
  %209 = load i32, i32* %8, align 4
  ret i32 %209
}

declare dso_local i64 @c67x00_claim_frame_bw(%struct.c67x00_hcd*, %struct.urb*, i32, i32) #1

declare dso_local i64 @usb_pipeisoc(i32) #1

declare dso_local i64 @usb_pipeint(i32) #1

declare dso_local %struct.c67x00_td* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_4__* @td_udev(%struct.c67x00_td*) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @usb_pipedevice(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
