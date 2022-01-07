; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.oxu_hcd = type { i32, i64*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@ignore_oc = common dso_local global i32 0, align 4
@PORT_CSC = common dso_local global i32 0, align 4
@PORT_PEC = common dso_local global i32 0, align 4
@PORT_OCC = common dso_local global i32 0, align 4
@PORT_CONNECT = common dso_local global i32 0, align 4
@PORT_RESUME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@STS_PCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @oxu_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.oxu_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %15 = call %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd* %14)
  store %struct.oxu_hcd* %15, %struct.oxu_hcd** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @HC_IS_RUNNING(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %141

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 0, i8* %24, align 1
  %25 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %26 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @HCS_N_PORTS(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %29, 7
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 0, i8* %33, align 1
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %31, %22
  %37 = load i32, i32* @ignore_oc, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @PORT_CSC, align 4
  %41 = load i32, i32* @PORT_PEC, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PORT_OCC, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %8, align 4
  br label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @PORT_CSC, align 4
  %47 = load i32, i32* @PORT_PEC, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %51 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %50, i32 0, i32 0
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %126, %49
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %129

58:                                               ; preds = %54
  %59 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %60 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @readl(i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @PORT_CONNECT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %58
  %73 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %74 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %72, %58
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @PORT_RESUME, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %125

89:                                               ; preds = %84
  %90 = load i32, i32* @jiffies, align 4
  %91 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %92 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @time_after_eq(i32 %90, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %89, %79
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 7
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  %106 = shl i32 1, %105
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = or i32 %110, %106
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %108, align 1
  br label %123

113:                                              ; preds = %100
  %114 = load i32, i32* %11, align 4
  %115 = sub nsw i32 %114, 7
  %116 = shl i32 1, %115
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = or i32 %120, %116
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %118, align 1
  br label %123

123:                                              ; preds = %113, %103
  %124 = load i32, i32* @STS_PCD, align 4
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %123, %89, %84
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %54

129:                                              ; preds = %54
  %130 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %131 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %130, i32 0, i32 0
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* %12, align 4
  br label %139

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ]
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %21
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd*) #1

declare dso_local i32 @HC_IS_RUNNING(i32) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
