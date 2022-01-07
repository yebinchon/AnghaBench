; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hub.c_ehci_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hub.c_ehci_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ehci_hcd = type { i32, i32, i64*, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@ignore_oc = common dso_local global i32 0, align 4
@PORT_CSC = common dso_local global i32 0, align 4
@PORT_PEC = common dso_local global i32 0, align 4
@PORT_OCC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@STS_PCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @ehci_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %14)
  store %struct.ehci_hcd* %15, %struct.ehci_hcd** %5, align 8
  store i32 1, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %17, align 1
  %18 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %19 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @HCS_N_PORTS(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 7
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 0, i8* %26, align 1
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %24, %2
  %30 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %31 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @ignore_oc, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @PORT_CSC, align 4
  %37 = load i32, i32* @PORT_PEC, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @PORT_OCC, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %8, align 4
  br label %45

41:                                               ; preds = %29
  %42 = load i32, i32* @PORT_CSC, align 4
  %43 = load i32, i32* @PORT_PEC, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %47 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %46, i32 0, i32 1
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %51 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %56 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %57 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = call i32 @ehci_readl(%struct.ehci_hcd* %55, i32* %59)
  %61 = ashr i32 %60, 16
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %54, %45
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %142, %62
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %145

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %10, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %75 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %76 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @ehci_readl(%struct.ehci_hcd* %74, i32* %82)
  store i32 %83, i32* %6, align 4
  br label %85

84:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %73
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %116, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %93 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %92, i32 0, i32 3
  %94 = call i64 @test_bit(i32 %91, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %116, label %96

96:                                               ; preds = %90
  %97 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %98 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %141

105:                                              ; preds = %96
  %106 = load i64, i64* @jiffies, align 8
  %107 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %108 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @time_after_eq(i64 %106, i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %105, %90, %85
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 7
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  %122 = shl i32 1, %121
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = or i32 %126, %122
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %124, align 1
  br label %139

129:                                              ; preds = %116
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %130, 7
  %132 = shl i32 1, %131
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = or i32 %136, %132
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %134, align 1
  br label %139

139:                                              ; preds = %129, %119
  %140 = load i32, i32* @STS_PCD, align 4
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %139, %105, %96
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %63

145:                                              ; preds = %63
  %146 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %147 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %152 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %151, i32 0, i32 0
  %153 = load i64, i64* @jiffies, align 8
  %154 = call i64 @msecs_to_jiffies(i32 25)
  %155 = add nsw i64 %153, %154
  %156 = call i32 @mod_timer(i32* %152, i64 %155)
  br label %157

157:                                              ; preds = %150, %145
  %158 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %159 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %158, i32 0, i32 1
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* %11, align 4
  br label %167

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i32 [ %165, %164 ], [ 0, %166 ]
  ret i32 %168
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
