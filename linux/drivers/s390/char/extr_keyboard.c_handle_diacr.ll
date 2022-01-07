; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_keyboard.c_handle_diacr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_keyboard.c_handle_diacr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbd_data = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kbd_data*, i32)* @handle_diacr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_diacr(%struct.kbd_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kbd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kbd_data* %0, %struct.kbd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kbd_data*, %struct.kbd_data** %4, align 8
  %9 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.kbd_data*, %struct.kbd_data** %4, align 8
  %12 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %51, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.kbd_data*, %struct.kbd_data** %4, align 8
  %16 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %13
  %20 = load %struct.kbd_data*, %struct.kbd_data** %4, align 8
  %21 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %19
  %31 = load %struct.kbd_data*, %struct.kbd_data** %4, align 8
  %32 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load %struct.kbd_data*, %struct.kbd_data** %4, align 8
  %43 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %3, align 4
  br label %70

50:                                               ; preds = %30, %19
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %13

54:                                               ; preds = %13
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %70

63:                                               ; preds = %57
  %64 = load %struct.kbd_data*, %struct.kbd_data** %4, align 8
  %65 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @kbd_put_queue(i32 %66, i32 %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %61, %41
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @kbd_put_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
