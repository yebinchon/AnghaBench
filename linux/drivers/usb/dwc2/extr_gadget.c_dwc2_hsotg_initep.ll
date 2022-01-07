; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_initep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_initep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.dwc2_hsotg_ep = type { i32, i32, %struct.TYPE_8__, i32, %struct.dwc2_hsotg*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ep%d%s\00", align 1
@DWC2_SPEED_PARAM_LOW = common dso_local global i64 0, align 8
@EP0_MPS_LIMIT = common dso_local global i32 0, align 4
@dwc2_hsotg_ep_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_hsotg_ep*, i32, i32)* @dwc2_hsotg_initep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hsotg_initep(%struct.dwc2_hsotg* %0, %struct.dwc2_hsotg_ep* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_hsotg_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_hsotg_ep* %1, %struct.dwc2_hsotg_ep** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %20

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %19

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %28 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @snprintf(i32 %29, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %30, i8* %31)
  %33 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %33, i32 0, i32 5
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %20
  %43 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %44 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %47 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %45, i32* %48)
  br label %50

50:                                               ; preds = %42, %20
  %51 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %52 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %53 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %52, i32 0, i32 4
  store %struct.dwc2_hsotg* %51, %struct.dwc2_hsotg** %53, align 8
  %54 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %55 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %58 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %61 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DWC2_SPEED_PARAM_LOW, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %50
  %67 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %68 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %67, i32 0, i32 2
  %69 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %68, i32 8)
  br label %81

70:                                               ; preds = %50
  %71 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %72 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %71, i32 0, i32 2
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @EP0_MPS_LIMIT, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = phi i32 [ 1024, %75 ], [ %77, %76 ]
  %80 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %72, i32 %79)
  br label %81

81:                                               ; preds = %78, %66
  %82 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %83 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32* @dwc2_hsotg_ep_ops, i32** %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %89 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %113

92:                                               ; preds = %81
  %93 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %94 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DWC2_SPEED_PARAM_LOW, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %101 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %105 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %99, %92
  %109 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %110 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %87
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %118 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  store i32 1, i32* %120, align 8
  br label %126

121:                                              ; preds = %113
  %122 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %123 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 5
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %116
  %127 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %128 = call i64 @using_dma(%struct.dwc2_hsotg* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %126
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  %133 = srem i32 %132, 15
  %134 = call i32 @DXEPCTL_NEXTEP(i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @DIEPCTL(i32 %140)
  %142 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %138, i32 %139, i32 %141)
  br label %149

143:                                              ; preds = %130
  %144 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @DOEPCTL(i32 %146)
  %148 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %144, i32 %145, i32 %147)
  br label %149

149:                                              ; preds = %143, %137
  br label %150

150:                                              ; preds = %149, %126
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @using_dma(%struct.dwc2_hsotg*) #1

declare dso_local i32 @DXEPCTL_NEXTEP(i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @DIEPCTL(i32) #1

declare dso_local i32 @DOEPCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
