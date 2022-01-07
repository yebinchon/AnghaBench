; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_obex.c_obex_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_obex.c_obex_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.f_obex = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i64 }

@.str = private unnamed_addr constant [28 x i8] c"reset obex ttyGS%d control\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"reset obex ttyGS%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"init obex ttyGS%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"activate obex ttyGS%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @obex_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obex_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_obex*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %11 = call %struct.f_obex* @func_to_obex(%struct.usb_function* %10)
  store %struct.f_obex* %11, %struct.f_obex** %8, align 8
  %12 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %13 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %15, align 8
  store %struct.usb_composite_dev* %16, %struct.usb_composite_dev** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %19 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %148

26:                                               ; preds = %22
  %27 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %28 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %32 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %144

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %38 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %142

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = icmp ugt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %148

45:                                               ; preds = %41
  %46 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %47 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %55 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %59 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %63 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %62, i32 0, i32 4
  %64 = call i32 @gserial_disconnect(%struct.TYPE_7__* %63)
  br label %65

65:                                               ; preds = %53, %45
  %66 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %67 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %75 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %123, label %81

81:                                               ; preds = %73, %65
  %82 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %83 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %87 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_dbg(i32* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %91 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %94 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %95 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = call i64 @config_ep_by_speed(%struct.TYPE_8__* %92, %struct.usb_function* %93, %struct.TYPE_9__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %81
  %101 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %102 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %105 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %106 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = call i64 @config_ep_by_speed(%struct.TYPE_8__* %103, %struct.usb_function* %104, %struct.TYPE_9__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %100, %81
  %112 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %113 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  %117 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %118 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32* null, i32** %121, align 8
  br label %148

122:                                              ; preds = %100
  br label %123

123:                                              ; preds = %122, %73
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %141

126:                                              ; preds = %123
  %127 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %128 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %132 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_dbg(i32* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  %135 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %136 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %135, i32 0, i32 4
  %137 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %138 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @gserial_connect(%struct.TYPE_7__* %136, i32 %139)
  br label %141

141:                                              ; preds = %126, %123
  br label %143

142:                                              ; preds = %35
  br label %148

143:                                              ; preds = %141
  br label %144

144:                                              ; preds = %143, %26
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.f_obex*, %struct.f_obex** %8, align 8
  %147 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  store i32 0, i32* %4, align 4
  br label %151

148:                                              ; preds = %142, %111, %44, %25
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %148, %144
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.f_obex* @func_to_obex(%struct.usb_function*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @gserial_disconnect(%struct.TYPE_7__*) #1

declare dso_local i64 @config_ep_by_speed(%struct.TYPE_8__*, %struct.usb_function*, %struct.TYPE_9__*) #1

declare dso_local i32 @gserial_connect(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
