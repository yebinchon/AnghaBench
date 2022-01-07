; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.tridentfb_par* }
%struct.tridentfb_par = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@PowerStatus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @tridentfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tridentfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.tridentfb_par*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.tridentfb_par*, %struct.tridentfb_par** %10, align 8
  store %struct.tridentfb_par* %11, %struct.tridentfb_par** %8, align 8
  %12 = call i32 @debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %14 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %20 = call i32 @t_outb(%struct.tridentfb_par* %19, i8 zeroext 4, i32 33736)
  %21 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %22 = call i32 @t_inb(%struct.tridentfb_par* %21, i32 33734)
  %23 = and i32 %22, 252
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %6, align 1
  %25 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %26 = load i32, i32* @PowerStatus, align 4
  %27 = call i32 @read3CE(%struct.tridentfb_par* %25, i32 %26)
  %28 = and i32 %27, 252
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %7, align 1
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %65 [
    i32 129, label %31
    i32 131, label %31
    i32 132, label %39
    i32 128, label %48
    i32 130, label %57
  ]

31:                                               ; preds = %18, %18
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, 3
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %6, align 1
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %7, align 1
  br label %65

39:                                               ; preds = %18
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, 2
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %6, align 1
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %45, 1
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %7, align 1
  br label %65

48:                                               ; preds = %18
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, 2
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %6, align 1
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, 2
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %7, align 1
  br label %65

57:                                               ; preds = %18
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %6, align 1
  %61 = load i8, i8* %7, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, 3
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %7, align 1
  br label %65

65:                                               ; preds = %18, %57, %48, %39, %31
  %66 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %67 = load i32, i32* @PowerStatus, align 4
  %68 = load i8, i8* %7, align 1
  %69 = call i32 @write3CE(%struct.tridentfb_par* %66, i32 %67, i8 zeroext %68)
  %70 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %71 = call i32 @t_outb(%struct.tridentfb_par* %70, i8 zeroext 4, i32 33736)
  %72 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %73 = load i8, i8* %6, align 1
  %74 = call i32 @t_outb(%struct.tridentfb_par* %72, i8 zeroext %73, i32 33734)
  %75 = call i32 @debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 131
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %65, %17
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @t_outb(%struct.tridentfb_par*, i8 zeroext, i32) #1

declare dso_local i32 @t_inb(%struct.tridentfb_par*, i32) #1

declare dso_local i32 @read3CE(%struct.tridentfb_par*, i32) #1

declare dso_local i32 @write3CE(%struct.tridentfb_par*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
