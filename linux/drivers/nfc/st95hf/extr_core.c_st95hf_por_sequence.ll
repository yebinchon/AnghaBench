; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_por_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_por_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st95hf_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"response from echo function = 0x%x, attempt = %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st95hf_context*)* @st95hf_por_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st95hf_por_sequence(%struct.st95hf_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st95hf_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.st95hf_context* %0, %struct.st95hf_context** %3, align 8
  store i32 1, i32* %4, align 4
  %6 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %7 = call i32 @st95hf_send_st95enable_negativepulse(%struct.st95hf_context* %6)
  %8 = call i32 @usleep_range(i32 5000, i32 6000)
  br label %9

9:                                                ; preds = %34, %1
  %10 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %11 = call i32 @st95hf_echo_command(%struct.st95hf_context* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %13 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %41

23:                                               ; preds = %9
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %28 = call i32 @st95hf_send_st95enable_negativepulse(%struct.st95hf_context* %27)
  br label %32

29:                                               ; preds = %23
  %30 = load %struct.st95hf_context*, %struct.st95hf_context** %3, align 8
  %31 = call i32 @st95hf_send_spi_reset_sequence(%struct.st95hf_context* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = call i32 @usleep_range(i32 50000, i32 51000)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = icmp slt i32 %35, 3
  br i1 %37, label %9, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %22
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @st95hf_send_st95enable_negativepulse(%struct.st95hf_context*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @st95hf_echo_command(%struct.st95hf_context*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @st95hf_send_spi_reset_sequence(%struct.st95hf_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
