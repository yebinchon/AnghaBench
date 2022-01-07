; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_ctl_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_ctl_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32 }
%struct.ctl_pkg = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"TX: invalid size: %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TB_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"TX: packet too large: %zu/%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@tb_ctl_tx_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_ctl*, i8*, i64, i32)* @tb_ctl_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_ctl_tx(%struct.tb_ctl* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_ctl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ctl_pkg*, align 8
  store %struct.tb_ctl* %0, %struct.tb_ctl** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = urem i64 %12, 4
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.tb_ctl*, %struct.tb_ctl** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 (%struct.tb_ctl*, i8*, i64, ...) @tb_ctl_WARN(%struct.tb_ctl* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %92

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* @TB_FRAME_SIZE, align 4
  %24 = sub nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.tb_ctl*, %struct.tb_ctl** %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @TB_FRAME_SIZE, align 4
  %31 = sub nsw i32 %30, 4
  %32 = call i32 (%struct.tb_ctl*, i8*, i64, ...) @tb_ctl_WARN(%struct.tb_ctl* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %29, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %92

35:                                               ; preds = %21
  %36 = load %struct.tb_ctl*, %struct.tb_ctl** %6, align 8
  %37 = call %struct.ctl_pkg* @tb_ctl_pkg_alloc(%struct.tb_ctl* %36)
  store %struct.ctl_pkg* %37, %struct.ctl_pkg** %11, align 8
  %38 = load %struct.ctl_pkg*, %struct.ctl_pkg** %11, align 8
  %39 = icmp ne %struct.ctl_pkg* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %92

43:                                               ; preds = %35
  %44 = load i32, i32* @tb_ctl_tx_callback, align 4
  %45 = load %struct.ctl_pkg*, %struct.ctl_pkg** %11, align 8
  %46 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 4
  %50 = load %struct.ctl_pkg*, %struct.ctl_pkg** %11, align 8
  %51 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.ctl_pkg*, %struct.ctl_pkg** %11, align 8
  %55 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ctl_pkg*, %struct.ctl_pkg** %11, align 8
  %59 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 4
  %61 = load %struct.ctl_pkg*, %struct.ctl_pkg** %11, align 8
  %62 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = udiv i64 %65, 4
  %67 = call i32 @cpu_to_be32_array(i64 %63, i8* %64, i64 %66)
  %68 = load %struct.ctl_pkg*, %struct.ctl_pkg** %11, align 8
  %69 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @tb_crc(i64 %70, i64 %71)
  %73 = load %struct.ctl_pkg*, %struct.ctl_pkg** %11, align 8
  %74 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %75, %76
  %78 = inttoptr i64 %77 to i32*
  store i32 %72, i32* %78, align 4
  %79 = load %struct.tb_ctl*, %struct.tb_ctl** %6, align 8
  %80 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ctl_pkg*, %struct.ctl_pkg** %11, align 8
  %83 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %82, i32 0, i32 0
  %84 = call i32 @tb_ring_tx(i32 %81, %struct.TYPE_2__* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %43
  %88 = load %struct.ctl_pkg*, %struct.ctl_pkg** %11, align 8
  %89 = call i32 @tb_ctl_pkg_free(%struct.ctl_pkg* %88)
  br label %90

90:                                               ; preds = %87, %43
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %40, %27, %15
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @tb_ctl_WARN(%struct.tb_ctl*, i8*, i64, ...) #1

declare dso_local %struct.ctl_pkg* @tb_ctl_pkg_alloc(%struct.tb_ctl*) #1

declare dso_local i32 @cpu_to_be32_array(i64, i8*, i64) #1

declare dso_local i32 @tb_crc(i64, i64) #1

declare dso_local i32 @tb_ring_tx(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @tb_ctl_pkg_free(%struct.ctl_pkg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
