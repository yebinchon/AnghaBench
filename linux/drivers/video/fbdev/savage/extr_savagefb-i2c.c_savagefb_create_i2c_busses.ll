; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb-i2c.c_savagefb_create_i2c_busses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb-i2c.c_savagefb_create_i2c_busses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.savagefb_par* }
%struct.savagefb_par = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.savagefb_par*, %struct.TYPE_7__, i32, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CR_SERIAL2 = common dso_local global i8* null, align 8
@prosavage_gpio_setsda = common dso_local global i8* null, align 8
@prosavage_gpio_setscl = common dso_local global i8* null, align 8
@prosavage_gpio_getsda = common dso_local global i8* null, align 8
@prosavage_gpio_getscl = common dso_local global i8* null, align 8
@CR_SERIAL1 = common dso_local global i8* null, align 8
@MM_SERIAL1 = common dso_local global i8* null, align 8
@savage4_gpio_setsda = common dso_local global i8* null, align 8
@savage4_gpio_setscl = common dso_local global i8* null, align 8
@savage4_gpio_getsda = common dso_local global i8* null, align 8
@savage4_gpio_getscl = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"SAVAGE DDC2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @savagefb_create_i2c_busses(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.savagefb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 0
  %6 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  store %struct.savagefb_par* %6, %struct.savagefb_par** %3, align 8
  %7 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %8 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %9 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store %struct.savagefb_par* %7, %struct.savagefb_par** %10, align 8
  %11 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %12 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %127 [
    i32 132, label %14
    i32 131, label %14
    i32 128, label %14
    i32 129, label %46
    i32 130, label %95
  ]

14:                                               ; preds = %1, %1, %1
  %15 = load i8*, i8** @CR_SERIAL2, align 8
  %16 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %17 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i8* %15, i8** %18, align 8
  %19 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %20 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %24 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load i8*, i8** @prosavage_gpio_setsda, align 8
  %27 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %28 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  store i8* %26, i8** %30, align 8
  %31 = load i8*, i8** @prosavage_gpio_setscl, align 8
  %32 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %33 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i8* %31, i8** %35, align 8
  %36 = load i8*, i8** @prosavage_gpio_getsda, align 8
  %37 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %38 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i8* %36, i8** %40, align 8
  %41 = load i8*, i8** @prosavage_gpio_getscl, align 8
  %42 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %43 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i8* %41, i8** %45, align 8
  br label %131

46:                                               ; preds = %1
  %47 = load i8*, i8** @CR_SERIAL1, align 8
  %48 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %49 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  store i8* %47, i8** %50, align 8
  %51 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %52 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %67

57:                                               ; preds = %46
  %58 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %59 = call i32 @VGArCR(i32 166, %struct.savagefb_par* %58)
  %60 = and i32 %59, 64
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** @CR_SERIAL2, align 8
  %64 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %65 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  store i8* %63, i8** %66, align 8
  br label %67

67:                                               ; preds = %62, %57, %46
  %68 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %69 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %73 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load i8*, i8** @prosavage_gpio_setsda, align 8
  %76 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %77 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  store i8* %75, i8** %79, align 8
  %80 = load i8*, i8** @prosavage_gpio_setscl, align 8
  %81 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %82 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i8* %80, i8** %84, align 8
  %85 = load i8*, i8** @prosavage_gpio_getsda, align 8
  %86 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %87 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i8* %85, i8** %89, align 8
  %90 = load i8*, i8** @prosavage_gpio_getscl, align 8
  %91 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %92 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i8* %90, i8** %94, align 8
  br label %131

95:                                               ; preds = %1
  %96 = load i8*, i8** @MM_SERIAL1, align 8
  %97 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %98 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store i8* %96, i8** %99, align 8
  %100 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %101 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %105 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  %107 = load i8*, i8** @savage4_gpio_setsda, align 8
  %108 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %109 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  store i8* %107, i8** %111, align 8
  %112 = load i8*, i8** @savage4_gpio_setscl, align 8
  %113 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %114 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  store i8* %112, i8** %116, align 8
  %117 = load i8*, i8** @savage4_gpio_getsda, align 8
  %118 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %119 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i8* %117, i8** %121, align 8
  %122 = load i8*, i8** @savage4_gpio_getscl, align 8
  %123 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %124 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i8* %122, i8** %126, align 8
  br label %131

127:                                              ; preds = %1
  %128 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %129 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store %struct.savagefb_par* null, %struct.savagefb_par** %130, align 8
  br label %131

131:                                              ; preds = %127, %95, %67, %14
  %132 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %133 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %132, i32 0, i32 1
  %134 = call i32 @savage_setup_i2c_bus(%struct.TYPE_8__* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @VGArCR(i32, %struct.savagefb_par*) #1

declare dso_local i32 @savage_setup_i2c_bus(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
