; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_read_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@XD_DAT = common dso_local global i32 0, align 4
@XD_TRANSFER = common dso_local global i32 0, align 4
@XD_TRANSFER_START = common dso_local global i32 0, align 4
@XD_READ_ID = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER_END = common dso_local global i32 0, align 4
@READ_REG_CMD = common dso_local global i32 0, align 4
@XD_ADDRESS1 = common dso_local global i64 0, align 8
@XD_CARD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32*, i32)* @xd_read_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xd_read_id(%struct.rtsx_chip* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %14 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %13)
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %16 = load i32, i32* @WRITE_REG_CMD, align 4
  %17 = load i32, i32* @XD_DAT, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %15, i32 %16, i32 %17, i32 255, i32 %18)
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %21 = load i32, i32* @WRITE_REG_CMD, align 4
  %22 = load i32, i32* @XD_TRANSFER, align 4
  %23 = load i32, i32* @XD_TRANSFER_START, align 4
  %24 = load i32, i32* @XD_READ_ID, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %20, i32 %21, i32 %22, i32 255, i32 %25)
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %28 = load i32, i32* @CHECK_REG_CMD, align 4
  %29 = load i32, i32* @XD_TRANSFER, align 4
  %30 = load i32, i32* @XD_TRANSFER_END, align 4
  %31 = load i32, i32* @XD_TRANSFER_END, align 4
  %32 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %27, i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %45, %4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %38 = load i32, i32* @READ_REG_CMD, align 4
  %39 = load i64, i64* @XD_ADDRESS1, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %37, i32 %38, i32 %43, i32 0, i32 0)
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %33

48:                                               ; preds = %33
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %50 = load i32, i32* @XD_CARD, align 4
  %51 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %49, i32 %50, i32 20)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %55, i32* %5, align 4
  br label %76

56:                                               ; preds = %48
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %58 = call i32* @rtsx_get_cmd_data(%struct.rtsx_chip* %57)
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 4
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 4, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @memcpy(i32* %70, i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %62, %56
  %75 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %54
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32* @rtsx_get_cmd_data(%struct.rtsx_chip*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
