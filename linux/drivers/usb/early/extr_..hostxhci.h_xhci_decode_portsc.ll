; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/early/extr_..hostxhci.h_xhci_decode_portsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/early/extr_..hostxhci.h_xhci_decode_portsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xhci_decode_portsc.str = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [31 x i8] c"%s %s %s Link:%s PortSpeed:%d \00", align 1
@PORT_POWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Powered\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Powered-off\00", align 1
@PORT_CONNECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Not-connected\00", align 1
@PORT_PE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@PORT_OC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"OverCurrent \00", align 1
@PORT_RESET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"In-Reset \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Change: \00", align 1
@PORT_CSC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"CSC \00", align 1
@PORT_PEC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"PEC \00", align 1
@PORT_WRC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"WRC \00", align 1
@PORT_OCC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"OCC \00", align 1
@PORT_RC = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"PRC \00", align 1
@PORT_PLC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"PLC \00", align 1
@PORT_CEC = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"CEC \00", align 1
@PORT_CAS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"CAS \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Wake: \00", align 1
@PORT_WKCONN_E = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"WCE \00", align 1
@PORT_WKDISC_E = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"WDE \00", align 1
@PORT_WKOC_E = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"WOE \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @xhci_decode_portsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xhci_decode_portsc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @PORT_POWER, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @PORT_CONNECT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @PORT_PE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %22 = load i32, i32* %2, align 4
  %23 = call i8* @xhci_portsc_link_state_string(i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @DEV_PORT_SPEED(i32 %24)
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %15, i8* %21, i8* %23, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @PORT_OC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %33
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %1
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @PORT_RESET, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %45
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %38
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %52
  %54 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @PORT_CSC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %63
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %50
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @PORT_PEC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %75
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %73, %68
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @PORT_WRC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %87
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %85, %80
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* @PORT_OCC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %99
  %101 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %97, %92
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @PORT_RC, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %111
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %109, %104
  %117 = load i32, i32* %2, align 4
  %118 = load i32, i32* @PORT_PLC, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %123
  %125 = call i32 (i8*, i8*, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %121, %116
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* @PORT_CEC, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %135
  %137 = call i32 (i8*, i8*, ...) @sprintf(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %133, %128
  %141 = load i32, i32* %2, align 4
  %142 = load i32, i32* @PORT_CAS, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %147
  %149 = call i32 (i8*, i8*, ...) @sprintf(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %145, %140
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %154
  %156 = call i32 (i8*, i8*, ...) @sprintf(i8* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %3, align 4
  %159 = load i32, i32* %2, align 4
  %160 = load i32, i32* @PORT_WKCONN_E, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %152
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %165
  %167 = call i32 (i8*, i8*, ...) @sprintf(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %163, %152
  %171 = load i32, i32* %2, align 4
  %172 = load i32, i32* @PORT_WKDISC_E, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  %176 = load i32, i32* %3, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %177
  %179 = call i32 (i8*, i8*, ...) @sprintf(i8* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %180 = load i32, i32* %3, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %175, %170
  %183 = load i32, i32* %2, align 4
  %184 = load i32, i32* @PORT_WKOC_E, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0), i64 %189
  %191 = call i32 (i8*, i8*, ...) @sprintf(i8* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %192 = load i32, i32* %3, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %187, %182
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xhci_decode_portsc.str, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @xhci_portsc_link_state_string(i32) #1

declare dso_local i32 @DEV_PORT_SPEED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
