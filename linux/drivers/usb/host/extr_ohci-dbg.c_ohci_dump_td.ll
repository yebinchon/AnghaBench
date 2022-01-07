; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-dbg.c_ohci_dump_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-dbg.c_ohci_dump_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32 }
%struct.td = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"%s td %p%s; urb %p index %d; hw next td %08x\0A\00", align 1
@TD_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" (DONE)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TD_ISO = common dso_local global i32 0, align 4
@TD_T = common dso_local global i32 0, align 4
@data0 = common dso_local global i8* null, align 8
@data1 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"(CARRY)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"(?)\00", align 1
@TD_DP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"SETUP\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"(bad pid)\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"     info %08x CC=%x %s DI=%d %s %s\0A\00", align 1
@TD_DI = common dso_local global i32 0, align 4
@TD_R = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"     cbp %08x be %08x (len %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"  info %08x CC=%x FC=%d DI=%d SF=%04x\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"  bp0 %08x be %08x\0A\00", align 1
@MAXPSW = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"    psw [%d] = %2x, CC=%x %s=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"OFFSET\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ohci_hcd*, i8*, %struct.td*)* @ohci_dump_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_dump_td(%struct.ohci_hcd* %0, i8* %1, %struct.td* %2) #0 {
  %4 = alloca %struct.ohci_hcd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.td*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.td* %2, %struct.td** %6, align 8
  %15 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %16 = load %struct.td*, %struct.td** %6, align 8
  %17 = getelementptr inbounds %struct.td, %struct.td* %16, i32 0, i32 5
  %18 = call i32 @hc32_to_cpup(%struct.ohci_hcd* %15, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.td*, %struct.td** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @TD_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = load %struct.td*, %struct.td** %6, align 8
  %29 = getelementptr inbounds %struct.td, %struct.td* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.td*, %struct.td** %6, align 8
  %32 = getelementptr inbounds %struct.td, %struct.td* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %35 = load %struct.td*, %struct.td** %6, align 8
  %36 = getelementptr inbounds %struct.td, %struct.td* %35, i32 0, i32 2
  %37 = call i32 @hc32_to_cpup(%struct.ohci_hcd* %34, i32* %36)
  %38 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_dbg(%struct.ohci_hcd* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %20, %struct.td* %21, i8* %27, i32 %30, i32 %33, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TD_ISO, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %101

43:                                               ; preds = %3
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @TD_T, align 4
  %46 = and i32 %44, %45
  switch i32 %46, label %52 [
    i32 130, label %47
    i32 129, label %49
    i32 128, label %51
  ]

47:                                               ; preds = %43
  %48 = load i8*, i8** @data0, align 8
  store i8* %48, i8** %8, align 8
  br label %53

49:                                               ; preds = %43
  %50 = load i8*, i8** @data1, align 8
  store i8* %50, i8** %8, align 8
  br label %53

51:                                               ; preds = %43
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %53

52:                                               ; preds = %43
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %53

53:                                               ; preds = %52, %51, %49, %47
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @TD_DP, align 4
  %56 = and i32 %54, %55
  switch i32 %56, label %60 [
    i32 131, label %57
    i32 133, label %58
    i32 132, label %59
  ]

57:                                               ; preds = %53
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %61

58:                                               ; preds = %53
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %61

59:                                               ; preds = %53
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %61

60:                                               ; preds = %53
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %61

61:                                               ; preds = %60, %59, %58, %57
  %62 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @TD_CC_GET(i32 %64)
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @TD_DI, align 4
  %69 = and i32 %67, %68
  %70 = ashr i32 %69, 21
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @TD_R, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %78 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_dbg(%struct.ohci_hcd* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %63, i32 %65, i8* %66, i32 %70, i8* %71, i8* %77)
  %79 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %80 = load %struct.td*, %struct.td** %6, align 8
  %81 = getelementptr inbounds %struct.td, %struct.td* %80, i32 0, i32 1
  %82 = call i32 @hc32_to_cpup(%struct.ohci_hcd* %79, i32* %81)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %84 = load %struct.td*, %struct.td** %6, align 8
  %85 = getelementptr inbounds %struct.td, %struct.td* %84, i32 0, i32 0
  %86 = call i32 @hc32_to_cpup(%struct.ohci_hcd* %83, i32* %85)
  store i32 %86, i32* %11, align 4
  %87 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %61
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %94, %95
  br label %98

97:                                               ; preds = %61
  br label %98

98:                                               ; preds = %97, %92
  %99 = phi i32 [ %96, %92 ], [ 0, %97 ]
  %100 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_dbg(%struct.ohci_hcd* %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %88, i32 %89, i32 %99)
  br label %154

101:                                              ; preds = %3
  %102 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @TD_CC_GET(i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = ashr i32 %106, 24
  %108 = and i32 %107, 7
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @TD_DI, align 4
  %111 = and i32 %109, %110
  %112 = ashr i32 %111, 21
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %113, 65535
  %115 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_dbg(%struct.ohci_hcd* %102, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %103, i32 %105, i32 %108, i32 %112, i32 %114)
  %116 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %117 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %118 = load %struct.td*, %struct.td** %6, align 8
  %119 = getelementptr inbounds %struct.td, %struct.td* %118, i32 0, i32 1
  %120 = call i32 @hc32_to_cpup(%struct.ohci_hcd* %117, i32* %119)
  %121 = and i32 %120, -4096
  %122 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %123 = load %struct.td*, %struct.td** %6, align 8
  %124 = getelementptr inbounds %struct.td, %struct.td* %123, i32 0, i32 0
  %125 = call i32 @hc32_to_cpup(%struct.ohci_hcd* %122, i32* %124)
  %126 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_dbg(%struct.ohci_hcd* %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %121, i32 %125)
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %150, %101
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @MAXPSW, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %127
  %132 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %133 = load %struct.td*, %struct.td** %6, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @ohci_hwPSW(%struct.ohci_hcd* %132, %struct.td* %133, i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = ashr i32 %136, 12
  %138 = and i32 %137, 15
  store i32 %138, i32* %14, align 4
  %139 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp sge i32 %143, 14
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)
  %147 = load i32, i32* %13, align 4
  %148 = and i32 %147, 4095
  %149 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_dbg(%struct.ohci_hcd* %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %140, i32 %141, i32 %142, i8* %146, i32 %148)
  br label %150

150:                                              ; preds = %131
  %151 = load i32, i32* %12, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %12, align 4
  br label %127

153:                                              ; preds = %127
  br label %154

154:                                              ; preds = %153, %98
  ret void
}

declare dso_local i32 @hc32_to_cpup(%struct.ohci_hcd*, i32*) #1

declare dso_local i32 @ohci_dbg(%struct.ohci_hcd*, i8*, ...) #1

declare dso_local i32 @TD_CC_GET(i32) #1

declare dso_local i32 @ohci_hwPSW(%struct.ohci_hcd*, %struct.td*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
