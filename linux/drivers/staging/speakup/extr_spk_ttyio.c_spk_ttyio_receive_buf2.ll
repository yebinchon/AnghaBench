; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_receive_buf2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_receive_buf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8)* }
%struct.tty_struct = type { %struct.spk_ldisc_data* }
%struct.spk_ldisc_data = type { i32, i8, i32 }

@spk_ttyio_synth = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i8*, i32)* @spk_ttyio_receive_buf2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spk_ttyio_receive_buf2(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.spk_ldisc_data*, align 8
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %13, align 8
  store %struct.spk_ldisc_data* %14, %struct.spk_ldisc_data** %10, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spk_ttyio_synth, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i8)*, i32 (i8)** %16, align 8
  %18 = icmp ne i32 (i8)* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spk_ttyio_synth, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i8)*, i32 (i8)** %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i32 %27(i8 zeroext %32)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %20

37:                                               ; preds = %20
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %5, align 4
  br label %57

39:                                               ; preds = %4
  %40 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %10, align 8
  %41 = getelementptr inbounds %struct.spk_ldisc_data, %struct.spk_ldisc_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %57

45:                                               ; preds = %39
  %46 = call i32 (...) @mb()
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %10, align 8
  %51 = getelementptr inbounds %struct.spk_ldisc_data, %struct.spk_ldisc_data* %50, i32 0, i32 1
  store i8 %49, i8* %51, align 4
  %52 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %10, align 8
  %53 = getelementptr inbounds %struct.spk_ldisc_data, %struct.spk_ldisc_data* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.spk_ldisc_data*, %struct.spk_ldisc_data** %10, align 8
  %55 = getelementptr inbounds %struct.spk_ldisc_data, %struct.spk_ldisc_data* %54, i32 0, i32 2
  %56 = call i32 @complete(i32* %55)
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %45, %44, %37
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
