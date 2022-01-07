; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_getinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvesafb_ktask = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.uvesafb_par = type { %struct.TYPE_6__ }

@TF_VBEIB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"VBE2\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Getting VBE info block failed (eax=0x%x, err=%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Sorry, pre-VBE 2.0 cards are not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Missing mode list!\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"OEM: %s, \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"VBE v%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvesafb_ktask*, %struct.uvesafb_par*)* @uvesafb_vbe_getinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_vbe_getinfo(%struct.uvesafb_ktask* %0, %struct.uvesafb_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvesafb_ktask*, align 8
  %5 = alloca %struct.uvesafb_par*, align 8
  %6 = alloca i32, align 4
  store %struct.uvesafb_ktask* %0, %struct.uvesafb_ktask** %4, align 8
  store %struct.uvesafb_par* %1, %struct.uvesafb_par** %5, align 8
  %7 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %8 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 20224, i32* %10, align 4
  %11 = load i32, i32* @TF_VBEIB, align 4
  %12 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %13 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 8
  %15 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %16 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 4, i32* %17, align 8
  %18 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %19 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %18, i32 0, i32 0
  %20 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %21 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %20, i32 0, i32 0
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %21, align 8
  %22 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %23 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strncpy(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %27 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %28 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %2
  %32 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %33 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 65535
  %38 = icmp ne i32 %37, 79
  br i1 %38, label %39, label %49

39:                                               ; preds = %31, %2
  %40 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %41 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %155

49:                                               ; preds = %31
  %50 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %51 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 512
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %155

59:                                               ; preds = %49
  %60 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %61 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %155

69:                                               ; preds = %59
  %70 = call i32 @pr_info(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %72 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %78 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = bitcast %struct.TYPE_6__* %79 to i8*
  %81 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %82 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %80, i64 %85
  %87 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %76, %69
  %89 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %90 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %96 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = bitcast %struct.TYPE_6__* %97 to i8*
  %99 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %100 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %98, i64 %103
  %105 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %94, %88
  %107 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %108 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %106
  %113 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %114 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = bitcast %struct.TYPE_6__* %115 to i8*
  %117 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %118 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %116, i64 %121
  %123 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %112, %106
  %125 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %126 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %124
  %131 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %132 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = bitcast %struct.TYPE_6__* %133 to i8*
  %135 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %136 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %134, i64 %139
  %141 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %130, %124
  %143 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %144 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 65280
  %148 = ashr i32 %147, 8
  %149 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %150 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 255
  %154 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %148, i32 %153)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %142, %65, %55, %39
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @uvesafb_exec(%struct.uvesafb_ktask*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
