; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_receive_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gsm_mux* }
%struct.gsm_mux = type { i32 (%struct.gsm_mux*, i8, i8)*, i32 (%struct.gsm_mux*, i8)* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"gsmld_receive: \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: unknown flag %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @gsmld_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsmld_receive_buf(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsm_mux*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load %struct.gsm_mux*, %struct.gsm_mux** %15, align 8
  store %struct.gsm_mux* %16, %struct.gsm_mux** %9, align 8
  store i8 -126, i8* %13, align 1
  %17 = load i32, i32* @debug, align 4
  %18 = and i32 %17, 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %11, align 8
  br label %29

29:                                               ; preds = %65, %25
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %29
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %11, align 8
  %38 = load i8, i8* %36, align 1
  store i8 %38, i8* %13, align 1
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i8, i8* %13, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %59 [
    i32 130, label %42
    i32 129, label %50
    i32 132, label %50
    i32 128, label %50
    i32 131, label %50
  ]

42:                                               ; preds = %39
  %43 = load %struct.gsm_mux*, %struct.gsm_mux** %9, align 8
  %44 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %43, i32 0, i32 1
  %45 = load i32 (%struct.gsm_mux*, i8)*, i32 (%struct.gsm_mux*, i8)** %44, align 8
  %46 = load %struct.gsm_mux*, %struct.gsm_mux** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i32 %45(%struct.gsm_mux* %46, i8 zeroext %48)
  br label %64

50:                                               ; preds = %39, %39, %39, %39
  %51 = load %struct.gsm_mux*, %struct.gsm_mux** %9, align 8
  %52 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %51, i32 0, i32 0
  %53 = load i32 (%struct.gsm_mux*, i8, i8)*, i32 (%struct.gsm_mux*, i8, i8)** %52, align 8
  %54 = load %struct.gsm_mux*, %struct.gsm_mux** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = load i8, i8* %13, align 1
  %58 = call i32 %53(%struct.gsm_mux* %54, i8 zeroext %56, i8 signext %57)
  br label %64

59:                                               ; preds = %39
  %60 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %61 = call i32 @tty_name(%struct.tty_struct* %60)
  %62 = load i8, i8* %13, align 1
  %63 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %61, i8 signext %62)
  br label %64

64:                                               ; preds = %59, %50, %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %12, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  br label %29

70:                                               ; preds = %29
  ret void
}

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i8 signext) #1

declare dso_local i32 @tty_name(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
