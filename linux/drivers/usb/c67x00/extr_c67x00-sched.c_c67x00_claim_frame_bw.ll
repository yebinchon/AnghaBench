; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_claim_frame_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_claim_frame_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.urb = type { i32, %struct.c67x00_urb_priv* }
%struct.c67x00_urb_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@USB_SPEED_LOW = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@CY_TD_SIZE = common dso_local global i64 0, align 8
@SIE_TD_SIZE = common dso_local global i64 0, align 8
@SIE_TD_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c67x00_hcd*, %struct.urb*, i32, i32)* @c67x00_claim_frame_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_claim_frame_bw(%struct.c67x00_hcd* %0, %struct.urb* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.c67x00_hcd*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.c67x00_urb_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %6, align 8
  store %struct.urb* %1, %struct.urb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.urb*, %struct.urb** %7, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 1
  %14 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %13, align 8
  store %struct.c67x00_urb_priv* %14, %struct.c67x00_urb_priv** %10, align 8
  %15 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %10, align 8
  %16 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @USB_SPEED_LOW, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %4
  %25 = load %struct.urb*, %struct.urb** %7, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @usb_pipein(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 7578, %31
  %33 = add nsw i32 80240, %32
  store i32 %33, i32* %11, align 4
  br label %38

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 7467, %35
  %37 = add nsw i32 80260, %36
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %30
  br label %59

39:                                               ; preds = %4
  %40 = load %struct.urb*, %struct.urb** %7, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @usb_pipeisoc(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.urb*, %struct.urb** %7, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @usb_pipein(i32 %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 9050, i32 7840
  store i32 %52, i32* %11, align 4
  br label %54

53:                                               ; preds = %39
  store i32 11250, i32* %11, align 4
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 936, %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %54, %38
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 50
  %62 = sdiv i32 %61, 100
  %63 = add nsw i32 %62, 106
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %6, align 8
  %67 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %6, align 8
  %71 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %69, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = load i32, i32* @EMSGSIZE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %152

80:                                               ; preds = %59
  %81 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %6, align 8
  %82 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CY_TD_SIZE, align 8
  %85 = add nsw i64 %83, %84
  %86 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %6, align 8
  %87 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SIE_TD_SIZE, align 8
  %90 = add nsw i64 %88, %89
  %91 = icmp sge i64 %85, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %80
  %96 = load i32, i32* @EMSGSIZE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %152

98:                                               ; preds = %80
  %99 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %6, align 8
  %100 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %6, align 8
  %106 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SIE_TD_BUF_SIZE, align 8
  %109 = add nsw i64 %107, %108
  %110 = icmp sge i64 %104, %109
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %98
  %115 = load i32, i32* @EMSGSIZE, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %152

117:                                              ; preds = %98
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %145

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %6, align 8
  %124 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %6, align 8
  %128 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @MAX_PERIODIC_BW(i64 %129)
  %131 = icmp sge i64 %126, %130
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %120
  %136 = load i32, i32* @EMSGSIZE, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %152

138:                                              ; preds = %120
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %6, align 8
  %142 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %140
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %138, %117
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %6, align 8
  %149 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %145, %135, %114, %95, %77
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i64 @usb_pipeisoc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @MAX_PERIODIC_BW(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
