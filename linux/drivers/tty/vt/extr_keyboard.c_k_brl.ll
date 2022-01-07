; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_k_brl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_k_brl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vc_data = type { i32 }

@k_brl.pressed = internal global i32 0, align 4
@k_brl.committing = internal global i32 0, align 4
@k_brl.releasestart = internal global i64 0, align 8
@kbd = common dso_local global %struct.TYPE_2__* null, align 8
@VC_UNICODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"keyboard mode must be unicode for braille patterns\0A\00", align 1
@BRL_UC_ROW = common dso_local global i32 0, align 4
@brl_timeout = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i8, i8)* @k_brl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k_brl(%struct.vc_data* %0, i8 zeroext %1, i8 signext %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kbd, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VC_UNICODE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i8, i8* %6, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  br label %97

18:                                               ; preds = %3
  %19 = load i8, i8* %5, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %23 = load i32, i32* @BRL_UC_ROW, align 4
  %24 = load i8, i8* %6, align 1
  %25 = call i32 @k_unicode(%struct.vc_data* %22, i32 %23, i8 signext %24)
  br label %97

26:                                               ; preds = %18
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sgt i32 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %97

31:                                               ; preds = %26
  %32 = load i8, i8* %6, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = sub nsw i32 %36, 1
  %38 = shl i32 1, %37
  %39 = load i32, i32* @k_brl.pressed, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @k_brl.pressed, align 4
  %41 = load i64, i64* @brl_timeout, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @k_brl.pressed, align 4
  store i32 %44, i32* @k_brl.committing, align 4
  br label %45

45:                                               ; preds = %43, %34
  br label %97

46:                                               ; preds = %31
  %47 = load i64, i64* @brl_timeout, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  %50 = load i32, i32* @k_brl.committing, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i64, i64* @k_brl.releasestart, align 8
  %55 = load i64, i64* @brl_timeout, align 8
  %56 = call i64 @msecs_to_jiffies(i64 %55)
  %57 = add i64 %54, %56
  %58 = call i64 @time_after(i64 %53, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52, %49
  %61 = load i32, i32* @k_brl.pressed, align 4
  store i32 %61, i32* @k_brl.committing, align 4
  %62 = load i64, i64* @jiffies, align 8
  store i64 %62, i64* @k_brl.releasestart, align 8
  br label %63

63:                                               ; preds = %60, %52
  %64 = load i8, i8* %5, align 1
  %65 = zext i8 %64 to i32
  %66 = sub nsw i32 %65, 1
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* @k_brl.pressed, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* @k_brl.pressed, align 4
  %71 = load i32, i32* @k_brl.pressed, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* @k_brl.committing, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %78 = load i32, i32* @k_brl.committing, align 4
  %79 = call i32 @k_brlcommit(%struct.vc_data* %77, i32 %78, i32 0)
  store i32 0, i32* @k_brl.committing, align 4
  br label %80

80:                                               ; preds = %76, %73, %63
  br label %96

81:                                               ; preds = %46
  %82 = load i32, i32* @k_brl.committing, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %86 = load i32, i32* @k_brl.committing, align 4
  %87 = call i32 @k_brlcommit(%struct.vc_data* %85, i32 %86, i32 0)
  store i32 0, i32* @k_brl.committing, align 4
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i8, i8* %5, align 1
  %90 = zext i8 %89 to i32
  %91 = sub nsw i32 %90, 1
  %92 = shl i32 1, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* @k_brl.pressed, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* @k_brl.pressed, align 4
  br label %96

96:                                               ; preds = %88, %80
  br label %97

97:                                               ; preds = %17, %21, %30, %96, %45
  ret void
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @k_unicode(%struct.vc_data*, i32, i8 signext) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @k_brlcommit(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
