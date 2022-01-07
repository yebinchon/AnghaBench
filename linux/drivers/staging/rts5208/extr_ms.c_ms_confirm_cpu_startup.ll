; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_confirm_cpu_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_confirm_cpu_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@MS_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@MS_NO_CARD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@MS_MAX_RETRY_COUNT = common dso_local global i32 0, align 4
@GET_INT = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@INT_REG_CED = common dso_local global i32 0, align 4
@INT_REG_ERR = common dso_local global i32 0, align 4
@INT_REG_CMDNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @ms_confirm_cpu_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_confirm_cpu_startup(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %52, %1
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %10 = load i32, i32* @MS_CARD, align 4
  %11 = call i32 @detect_card_cd(%struct.rtsx_chip* %9, i32 %10)
  %12 = load i32, i32* @STATUS_SUCCESS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %16 = load i32, i32* @MS_NO_CARD, align 4
  %17 = call i32 @ms_set_err_code(%struct.rtsx_chip* %15, i32 %16)
  %18 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %18, i32* %2, align 4
  br label %103

19:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %26 = load i32, i32* @GET_INT, align 4
  %27 = load i32, i32* @NO_WAIT_INT, align 4
  %28 = call i32 @ms_read_bytes(%struct.rtsx_chip* %25, i32 %26, i32 1, i32 %27, i32* %7, i32 1)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @STATUS_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %37

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %20

37:                                               ; preds = %32, %20
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %42, i32* %2, align 4
  br label %103

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 100
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %47, i32* %2, align 4
  br label %103

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = call i32 @wait_timeout(i32 100)
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @INT_REG_CED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %8, label %58

58:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %65 = load i32, i32* @GET_INT, align 4
  %66 = load i32, i32* @NO_WAIT_INT, align 4
  %67 = call i32 @ms_read_bytes(%struct.rtsx_chip* %64, i32 %65, i32 1, i32 %66, i32* %7, i32 1)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @STATUS_SUCCESS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %76

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %59

76:                                               ; preds = %71, %59
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %81, i32* %2, align 4
  br label %103

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @INT_REG_ERR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @INT_REG_CMDNK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* @MS_CARD, align 4
  %94 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %95 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %100

98:                                               ; preds = %87
  %99 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %99, i32* %2, align 4
  br label %103

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %82
  %102 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %98, %80, %46, %41, %14
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_read_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @wait_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
