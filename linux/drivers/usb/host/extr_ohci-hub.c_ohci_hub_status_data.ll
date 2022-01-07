; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hub.c_ohci_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hub.c_ohci_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ohci_hcd = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OHCI_QUIRK_AMD756 = common dso_local global i32 0, align 4
@RH_A_NDP = common dso_local global i32 0, align 4
@MAX_ROOT_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"bogus NDP, rereads as NDP=%d\0A\00", align 1
@RH_HS_LPSC = common dso_local global i32 0, align 4
@RH_HS_OCIC = common dso_local global i32 0, align 4
@OHCI_INTR_RHSC = common dso_local global i32 0, align 4
@RH_PS_CCS = common dso_local global i32 0, align 4
@RH_PS_CSC = common dso_local global i32 0, align 4
@RH_PS_PESC = common dso_local global i32 0, align 4
@RH_PS_PSSC = common dso_local global i32 0, align 4
@RH_PS_OCIC = common dso_local global i32 0, align 4
@RH_PS_PRSC = common dso_local global i32 0, align 4
@HCD_FLAG_POLL_RH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ohci_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ohci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %14 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %13)
  store %struct.ohci_hcd* %14, %struct.ohci_hcd** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %16 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %15, i32 0, i32 2
  %17 = load i64, i64* %11, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %20 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %162

23:                                               ; preds = %2
  %24 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %25 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @OHCI_QUIRK_AMD756, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %23
  %31 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %32 = call i32 @roothub_a(%struct.ohci_hcd* %31)
  %33 = load i32, i32* @RH_A_NDP, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @MAX_ROOT_PORTS, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %39 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %40 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %41 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @ohci_readl(%struct.ohci_hcd* %39, i32* %44)
  %46 = load i32, i32* @RH_A_NDP, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @ohci_warn(%struct.ohci_hcd* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %162

49:                                               ; preds = %30, %23
  %50 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %51 = call i32 @roothub_status(%struct.ohci_hcd* %50)
  %52 = load i32, i32* @RH_HS_LPSC, align 4
  %53 = load i32, i32* @RH_HS_OCIC, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 1, i8* %59, align 1
  br label %63

60:                                               ; preds = %49
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %65 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 7
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 0, i8* %70, align 1
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %75 = load i32, i32* @OHCI_INTR_RHSC, align 4
  %76 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %77 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i32 @ohci_writel(%struct.ohci_hcd* %74, i32 %75, i32* %79)
  %81 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %82 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %83 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i32 @ohci_readl(%struct.ohci_hcd* %81, i32* %85)
  %87 = load i32, i32* @OHCI_INTR_RHSC, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %141, %73
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %92 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %144

95:                                               ; preds = %89
  %96 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @roothub_portstatus(%struct.ohci_hcd* %96, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @RH_PS_CCS, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @RH_PS_CSC, align 4
  %106 = load i32, i32* @RH_PS_PESC, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @RH_PS_PSSC, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @RH_PS_OCIC, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @RH_PS_PRSC, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %104, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %95
  store i32 1, i32* %7, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 7
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
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
  %130 = load i32, i32* %6, align 4
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
  br label %140

140:                                              ; preds = %139, %95
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %89

144:                                              ; preds = %89
  %145 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i64 @ohci_root_hub_state_changes(%struct.ohci_hcd* %145, i32 %146, i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %153 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %154 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %153, i32 0, i32 0
  %155 = call i32 @set_bit(i32 %152, i32* %154)
  br label %161

156:                                              ; preds = %144
  %157 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %158 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %159 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %158, i32 0, i32 0
  %160 = call i32 @clear_bit(i32 %157, i32* %159)
  br label %161

161:                                              ; preds = %156, %151
  br label %162

162:                                              ; preds = %161, %37, %22
  %163 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %164 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %163, i32 0, i32 2
  %165 = load i64, i64* %11, align 8
  %166 = call i32 @spin_unlock_irqrestore(i32* %164, i64 %165)
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = load i32, i32* %8, align 4
  br label %172

171:                                              ; preds = %162
  br label %172

172:                                              ; preds = %171, %169
  %173 = phi i32 [ %170, %169 ], [ 0, %171 ]
  ret i32 %173
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @roothub_a(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_warn(%struct.ohci_hcd*, i8*, i32) #1

declare dso_local i32 @ohci_readl(%struct.ohci_hcd*, i32*) #1

declare dso_local i32 @roothub_status(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

declare dso_local i32 @roothub_portstatus(%struct.ohci_hcd*, i32) #1

declare dso_local i64 @ohci_root_hub_state_changes(%struct.ohci_hcd*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
