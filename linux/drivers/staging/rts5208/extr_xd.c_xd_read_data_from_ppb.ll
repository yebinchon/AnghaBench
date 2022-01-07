; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_read_data_from_ppb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_read_data_from_ppb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@STATUS_FAIL = common dso_local global i32 0, align 4
@READ_REG_CMD = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32*, i32)* @xd_read_data_from_ppb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xd_read_data_from_ppb(%struct.rtsx_chip* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %18, i32* %5, align 4
  br label %56

19:                                               ; preds = %14
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %21 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %20)
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %37, %19
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %28 = load i32, i32* @READ_REG_CMD, align 4
  %29 = load i64, i64* @PPBUF_BASE2, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %27, i32 %28, i64 %35, i32 0, i32 0)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %42 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %41, i32 0, i32 250)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %47 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %46)
  %48 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %48, i32* %5, align 4
  br label %56

49:                                               ; preds = %40
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %52 = call i32 @rtsx_get_cmd_data(%struct.rtsx_chip* %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @memcpy(i32* %50, i32 %52, i32 %53)
  %55 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %49, %45, %17
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i64, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_clear_xd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rtsx_get_cmd_data(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
