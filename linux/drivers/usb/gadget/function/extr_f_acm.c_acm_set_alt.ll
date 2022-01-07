; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_acm.c_acm_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_acm.c_acm_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.f_acm = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i64 }

@.str = private unnamed_addr constant [32 x i8] c"reset acm control interface %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"reset acm ttyGS%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"activate acm ttyGS%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @acm_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_acm*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %11 = call %struct.f_acm* @func_to_acm(%struct.usb_function* %10)
  store %struct.f_acm* %11, %struct.f_acm** %8, align 8
  %12 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %13 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %15, align 8
  store %struct.usb_composite_dev* %16, %struct.usb_composite_dev** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %19 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %3
  %23 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %24 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_vdbg(i32* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %30 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %29, i32 0, i32 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = call i32 @usb_ep_disable(%struct.TYPE_9__* %31)
  %33 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %34 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %33, i32 0, i32 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %22
  %40 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %41 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %44 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %45 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %44, i32 0, i32 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = call i64 @config_ep_by_speed(%struct.TYPE_11__* %42, %struct.usb_function* %43, %struct.TYPE_9__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %155

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %22
  %54 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %55 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %54, i32 0, i32 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = call i32 @usb_ep_enable(%struct.TYPE_9__* %56)
  br label %154

58:                                               ; preds = %3
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %61 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %150

64:                                               ; preds = %58
  %65 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %66 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %65, i32 0, i32 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %73 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %77 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_dbg(i32* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %81 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %80, i32 0, i32 3
  %82 = call i32 @gserial_disconnect(%struct.TYPE_10__* %81)
  br label %83

83:                                               ; preds = %71, %64
  %84 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %85 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %93 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %143, label %99

99:                                               ; preds = %91, %83
  %100 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %101 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %100, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %105 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_dbg(i32* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %109 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %112 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %113 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = call i64 @config_ep_by_speed(%struct.TYPE_11__* %110, %struct.usb_function* %111, %struct.TYPE_9__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %99
  %119 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %120 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %123 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %124 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = call i64 @config_ep_by_speed(%struct.TYPE_11__* %121, %struct.usb_function* %122, %struct.TYPE_9__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %118, %99
  %130 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %131 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  store i32* null, i32** %134, align 8
  %135 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %136 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  store i32* null, i32** %139, align 8
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %155

142:                                              ; preds = %118
  br label %143

143:                                              ; preds = %142, %91
  %144 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %145 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %144, i32 0, i32 3
  %146 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  %147 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @gserial_connect(%struct.TYPE_10__* %145, i32 %148)
  br label %153

150:                                              ; preds = %58
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %155

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153, %53
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %150, %129, %49
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.f_acm* @func_to_acm(%struct.usb_function*) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, i32) #1

declare dso_local i32 @usb_ep_disable(%struct.TYPE_9__*) #1

declare dso_local i64 @config_ep_by_speed(%struct.TYPE_11__*, %struct.usb_function*, %struct.TYPE_9__*) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @gserial_disconnect(%struct.TYPE_10__*) #1

declare dso_local i32 @gserial_connect(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
