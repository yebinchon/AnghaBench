; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hc_enable_slave_ints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hc_enable_slave_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_host_chan = type { i32, i32, i32, i32, i32, i32, i32 }

@HCINTMSK_CHHLTD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"control/bulk\0A\00", align 1
@HCINTMSK_XFERCOMPL = common dso_local global i32 0, align 4
@HCINTMSK_STALL = common dso_local global i32 0, align 4
@HCINTMSK_XACTERR = common dso_local global i32 0, align 4
@HCINTMSK_DATATGLERR = common dso_local global i32 0, align 4
@HCINTMSK_BBLERR = common dso_local global i32 0, align 4
@HCINTMSK_NAK = common dso_local global i32 0, align 4
@HCINTMSK_NYET = common dso_local global i32 0, align 4
@HCINTMSK_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"intr\0A\00", align 1
@HCINTMSK_FRMOVRUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"isoc\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"## Unknown EP type ##\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"set HCINTMSK to %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*)* @dwc2_hc_enable_slave_ints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_enable_slave_ints(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_host_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %4, align 8
  %6 = load i32, i32* @HCINTMSK_CHHLTD, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %8 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %177 [
    i32 130, label %10
    i32 131, label %10
    i32 129, label %83
    i32 128, label %147
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %12 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @HCINTMSK_XFERCOMPL, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @HCINTMSK_STALL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @HCINTMSK_XACTERR, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @HCINTMSK_DATATGLERR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %28 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %10
  %32 = load i32, i32* @HCINTMSK_BBLERR, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %51

35:                                               ; preds = %10
  %36 = load i32, i32* @HCINTMSK_NAK, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @HCINTMSK_NYET, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %43 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i32, i32* @HCINTMSK_ACK, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %35
  br label %51

51:                                               ; preds = %50, %31
  %52 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %53 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load i32, i32* @HCINTMSK_NAK, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %61 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @HCINTMSK_NYET, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %72

68:                                               ; preds = %56
  %69 = load i32, i32* @HCINTMSK_ACK, align 4
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %51
  %74 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %75 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @HCINTMSK_ACK, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %73
  br label %182

83:                                               ; preds = %2
  %84 = call i32 (...) @dbg_perio()
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %88 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i32, i32* @HCINTMSK_XFERCOMPL, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* @HCINTMSK_NAK, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* @HCINTMSK_STALL, align 4
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* @HCINTMSK_XACTERR, align 4
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* @HCINTMSK_DATATGLERR, align 4
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* @HCINTMSK_FRMOVRUN, align 4
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  %110 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %111 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %91
  %115 = load i32, i32* @HCINTMSK_BBLERR, align 4
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %114, %91
  %119 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %120 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* @HCINTMSK_ACK, align 4
  %125 = load i32, i32* %5, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %123, %118
  %128 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %129 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  %133 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %134 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @HCINTMSK_NYET, align 4
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %5, align 4
  br label %145

141:                                              ; preds = %132
  %142 = load i32, i32* @HCINTMSK_ACK, align 4
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %141, %137
  br label %146

146:                                              ; preds = %145, %127
  br label %182

147:                                              ; preds = %2
  %148 = call i32 (...) @dbg_perio()
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %152 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %155

155:                                              ; preds = %150, %147
  %156 = load i32, i32* @HCINTMSK_XFERCOMPL, align 4
  %157 = load i32, i32* %5, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* @HCINTMSK_FRMOVRUN, align 4
  %160 = load i32, i32* %5, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* @HCINTMSK_ACK, align 4
  %163 = load i32, i32* %5, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %5, align 4
  %165 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %166 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %155
  %170 = load i32, i32* @HCINTMSK_XACTERR, align 4
  %171 = load i32, i32* %5, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* @HCINTMSK_BBLERR, align 4
  %174 = load i32, i32* %5, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %169, %155
  br label %182

177:                                              ; preds = %2
  %178 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %179 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @dev_err(i32 %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %182

182:                                              ; preds = %177, %176, %146, %82
  %183 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %184 = load i32, i32* %5, align 4
  %185 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %186 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @HCINTMSK(i32 %187)
  %189 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %183, i32 %184, i32 %188)
  %190 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %191 = call i64 @dbg_hc(%struct.dwc2_host_chan* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %182
  %194 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %195 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %5, align 4
  %198 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %196, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %193, %182
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, ...) #1

declare dso_local i32 @dbg_perio(...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @HCINTMSK(i32) #1

declare dso_local i64 @dbg_hc(%struct.dwc2_host_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
