; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_debug.c_di_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_debug.c_di_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.whc* }
%struct.whc = type { i32, %struct.di_buf_entry* }
%struct.di_buf_entry = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"DI[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"  availability: %*pb\0A\00", align 1
@UWB_NUM_MAS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"  %c%c key idx: %d dev addr: %d\0A\00", align 1
@WHC_DI_SECURE = common dso_local global i32 0, align 4
@WHC_DI_DISABLE = common dso_local global i32 0, align 4
@WHC_DI_KEY_IDX_MASK = common dso_local global i32 0, align 4
@WHC_DI_DEV_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @di_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @di_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.whc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.di_buf_entry*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.whc*, %struct.whc** %9, align 8
  store %struct.whc* %10, %struct.whc** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %66, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.whc*, %struct.whc** %5, align 8
  %14 = getelementptr inbounds %struct.whc, %struct.whc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %11
  %18 = load %struct.whc*, %struct.whc** %5, align 8
  %19 = getelementptr inbounds %struct.whc, %struct.whc* %18, i32 0, i32 1
  %20 = load %struct.di_buf_entry*, %struct.di_buf_entry** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %20, i64 %22
  store %struct.di_buf_entry* %23, %struct.di_buf_entry** %7, align 8
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = trunc i32 %25 to i8
  %27 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load i32, i32* @UWB_NUM_MAS, align 4
  %30 = trunc i32 %29 to i8
  %31 = load %struct.di_buf_entry*, %struct.di_buf_entry** %7, align 8
  %32 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i64*
  %35 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8 signext %30, i64* %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.di_buf_entry*, %struct.di_buf_entry** %7, align 8
  %38 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WHC_DI_SECURE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 83, i32 32
  %45 = trunc i32 %44 to i8
  %46 = load %struct.di_buf_entry*, %struct.di_buf_entry** %7, align 8
  %47 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @WHC_DI_DISABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 68, i32 32
  %54 = load %struct.di_buf_entry*, %struct.di_buf_entry** %7, align 8
  %55 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @WHC_DI_KEY_IDX_MASK, align 4
  %58 = and i32 %56, %57
  %59 = ashr i32 %58, 8
  %60 = load %struct.di_buf_entry*, %struct.di_buf_entry** %7, align 8
  %61 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @WHC_DI_DEV_ADDR_MASK, align 4
  %64 = and i32 %62, %63
  %65 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8 signext %45, i32 %53, i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %17
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %11

69:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
