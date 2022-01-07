; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hub.c_ohci_hub_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hub.c_ohci_hub_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ohci_hcd = type { i32, %struct.TYPE_6__*, i32 (%struct.ohci_hcd*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.usb_hub_descriptor = type { i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@RH_HS_OCIC = common dso_local global i32 0, align 4
@RH_PS_CCS = common dso_local global i32 0, align 4
@RH_PS_PESC = common dso_local global i32 0, align 4
@RH_PS_POCI = common dso_local global i32 0, align 4
@RH_PS_PSSC = common dso_local global i32 0, align 4
@RH_PS_LSDA = common dso_local global i32 0, align 4
@RH_PS_CSC = common dso_local global i32 0, align 4
@RH_PS_OCIC = common dso_local global i32 0, align 4
@RH_PS_PRSC = common dso_local global i32 0, align 4
@RH_HS_CRWE = common dso_local global i32 0, align 4
@RH_HS_DRWE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"GetStatus\00", align 1
@RH_PS_PSS = common dso_local global i32 0, align 4
@RH_PS_PPS = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ohci_hub_control(%struct.usb_hcd* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ohci_hcd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %19 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %18)
  store %struct.ohci_hcd* %19, %struct.ohci_hcd** %14, align 8
  %20 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %21 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %24 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @ESHUTDOWN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %190

33:                                               ; preds = %6
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %184 [
    i32 143, label %35
    i32 142, label %49
    i32 141, label %91
    i32 140, label %96
    i32 139, label %107
    i32 138, label %135
    i32 137, label %140
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %47 [
    i32 144, label %37
    i32 145, label %46
  ]

37:                                               ; preds = %35
  %38 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %39 = load i32, i32* @RH_HS_OCIC, align 4
  %40 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %41 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = call i32 @ohci_writel(%struct.ohci_hcd* %38, i32 %39, i32* %44)
  br label %46

46:                                               ; preds = %35, %37
  br label %48

47:                                               ; preds = %35
  br label %185

48:                                               ; preds = %46
  br label %188

49:                                               ; preds = %33
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %49
  br label %185

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  switch i32 %60, label %77 [
    i32 131, label %61
    i32 135, label %63
    i32 128, label %65
    i32 132, label %67
    i32 130, label %69
    i32 136, label %71
    i32 134, label %73
    i32 133, label %75
  ]

61:                                               ; preds = %57
  %62 = load i32, i32* @RH_PS_CCS, align 4
  store i32 %62, i32* %16, align 4
  br label %78

63:                                               ; preds = %57
  %64 = load i32, i32* @RH_PS_PESC, align 4
  store i32 %64, i32* %16, align 4
  br label %78

65:                                               ; preds = %57
  %66 = load i32, i32* @RH_PS_POCI, align 4
  store i32 %66, i32* %16, align 4
  br label %78

67:                                               ; preds = %57
  %68 = load i32, i32* @RH_PS_PSSC, align 4
  store i32 %68, i32* %16, align 4
  br label %78

69:                                               ; preds = %57
  %70 = load i32, i32* @RH_PS_LSDA, align 4
  store i32 %70, i32* %16, align 4
  br label %78

71:                                               ; preds = %57
  %72 = load i32, i32* @RH_PS_CSC, align 4
  store i32 %72, i32* %16, align 4
  br label %78

73:                                               ; preds = %57
  %74 = load i32, i32* @RH_PS_OCIC, align 4
  store i32 %74, i32* %16, align 4
  br label %78

75:                                               ; preds = %57
  %76 = load i32, i32* @RH_PS_PRSC, align 4
  store i32 %76, i32* %16, align 4
  br label %78

77:                                               ; preds = %57
  br label %185

78:                                               ; preds = %75, %73, %71, %69, %67, %65, %63, %61
  %79 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %82 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @ohci_writel(%struct.ohci_hcd* %79, i32 %80, i32* %89)
  br label %188

91:                                               ; preds = %33
  %92 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = bitcast i8* %93 to %struct.usb_hub_descriptor*
  %95 = call i32 @ohci_hub_descriptor(%struct.ohci_hcd* %92, %struct.usb_hub_descriptor* %94)
  br label %188

96:                                               ; preds = %33
  %97 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %98 = call i32 @roothub_status(%struct.ohci_hcd* %97)
  %99 = load i32, i32* @RH_HS_CRWE, align 4
  %100 = load i32, i32* @RH_HS_DRWE, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = and i32 %98, %102
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @put_unaligned_le32(i32 %104, i8* %105)
  br label %188

107:                                              ; preds = %33
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %107
  br label %185

115:                                              ; preds = %110
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %11, align 4
  %118 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @roothub_portstatus(%struct.ohci_hcd* %118, i32 %119)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i8*, i8** %12, align 8
  %123 = call i32 @put_unaligned_le32(i32 %121, i8* %122)
  %124 = load i8*, i8** %12, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  %126 = bitcast i8* %125 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %115
  %130 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @dbg_port(%struct.ohci_hcd* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %115
  br label %188

135:                                              ; preds = %33
  %136 = load i32, i32* %10, align 4
  switch i32 %136, label %138 [
    i32 144, label %137
    i32 145, label %137
  ]

137:                                              ; preds = %135, %135
  br label %139

138:                                              ; preds = %135
  br label %185

139:                                              ; preds = %137
  br label %188

140:                                              ; preds = %33
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143, %140
  br label %185

148:                                              ; preds = %143
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %10, align 4
  switch i32 %151, label %182 [
    i32 128, label %152
    i32 130, label %165
    i32 129, label %178
  ]

152:                                              ; preds = %148
  %153 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %154 = load i32, i32* @RH_PS_PSS, align 4
  %155 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %156 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %155, i32 0, i32 1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = call i32 @ohci_writel(%struct.ohci_hcd* %153, i32 %154, i32* %163)
  br label %183

165:                                              ; preds = %148
  %166 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %167 = load i32, i32* @RH_PS_PPS, align 4
  %168 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %169 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %168, i32 0, i32 1
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = call i32 @ohci_writel(%struct.ohci_hcd* %166, i32 %167, i32* %176)
  br label %183

178:                                              ; preds = %148
  %179 = load %struct.ohci_hcd*, %struct.ohci_hcd** %14, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @root_port_reset(%struct.ohci_hcd* %179, i32 %180)
  store i32 %181, i32* %17, align 4
  br label %183

182:                                              ; preds = %148
  br label %185

183:                                              ; preds = %178, %165, %152
  br label %188

184:                                              ; preds = %33
  br label %185

185:                                              ; preds = %184, %182, %147, %138, %114, %77, %56, %47
  %186 = load i32, i32* @EPIPE, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %185, %183, %139, %134, %96, %91, %78, %48
  %189 = load i32, i32* %17, align 4
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %188, %30
  %191 = load i32, i32* %7, align 4
  ret i32 %191
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

declare dso_local i32 @ohci_hub_descriptor(%struct.ohci_hcd*, %struct.usb_hub_descriptor*) #1

declare dso_local i32 @roothub_status(%struct.ohci_hcd*) #1

declare dso_local i32 @put_unaligned_le32(i32, i8*) #1

declare dso_local i32 @roothub_portstatus(%struct.ohci_hcd*, i32) #1

declare dso_local i32 @dbg_port(%struct.ohci_hcd*, i8*, i32, i32) #1

declare dso_local i32 @root_port_reset(%struct.ohci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
