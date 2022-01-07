; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_format_transinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_format_transinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ahc_transinfo = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%d.%03dMB/s transfers\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%dKB/s transfers\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c" (%d.%03dMHz%s, offset %d\00", align 1
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" DT\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%dbit)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.ahc_transinfo*)* @ahc_format_transinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_format_transinfo(%struct.seq_file* %0, %struct.ahc_transinfo* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.ahc_transinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.ahc_transinfo* %1, %struct.ahc_transinfo** %4, align 8
  store i32 3300, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ahc_transinfo*, %struct.ahc_transinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ahc_transinfo, %struct.ahc_transinfo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.ahc_transinfo*, %struct.ahc_transinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ahc_transinfo, %struct.ahc_transinfo* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ahc_calc_syncsrate(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.ahc_transinfo*, %struct.ahc_transinfo** %4, align 8
  %20 = getelementptr inbounds %struct.ahc_transinfo, %struct.ahc_transinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 1, %21
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %25, 1000
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = srem i32 %32, 1000
  %34 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33)
  br label %39

35:                                               ; preds = %18
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sdiv i32 %44, 1000
  %46 = load i32, i32* %6, align 4
  %47 = srem i32 %46, 1000
  %48 = load %struct.ahc_transinfo*, %struct.ahc_transinfo** %4, align 8
  %49 = getelementptr inbounds %struct.ahc_transinfo, %struct.ahc_transinfo* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %56 = load %struct.ahc_transinfo*, %struct.ahc_transinfo** %4, align 8
  %57 = getelementptr inbounds %struct.ahc_transinfo, %struct.ahc_transinfo* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %47, i8* %55, i64 %58)
  br label %60

60:                                               ; preds = %42, %39
  %61 = load %struct.ahc_transinfo*, %struct.ahc_transinfo** %4, align 8
  %62 = getelementptr inbounds %struct.ahc_transinfo, %struct.ahc_transinfo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = call i32 @seq_puts(%struct.seq_file* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %74

71:                                               ; preds = %65
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = call i32 @seq_puts(%struct.seq_file* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = load %struct.ahc_transinfo*, %struct.ahc_transinfo** %4, align 8
  %77 = getelementptr inbounds %struct.ahc_transinfo, %struct.ahc_transinfo* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 1, %78
  %80 = mul nsw i32 8, %79
  %81 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  br label %89

82:                                               ; preds = %60
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %87 = call i32 @seq_putc(%struct.seq_file* %86, i8 signext 41)
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %74
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = call i32 @seq_putc(%struct.seq_file* %90, i8 signext 10)
  ret void
}

declare dso_local i32 @ahc_calc_syncsrate(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
