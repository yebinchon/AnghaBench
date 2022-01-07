; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_crypt_tkip.c_rtllib_tkip_print_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_crypt_tkip.c_rtllib_tkip_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rtllib_tkip_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [138 x i8] c"key[%d] alg=TKIP key_set=%d tx_pn=%02x%02x%02x%02x%02x%02x rx_pn=%02x%02x%02x%02x%02x%02x replays=%d icv_errors=%d local_mic_failures=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @rtllib_tkip_print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_tkip_print_stats(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rtllib_tkip_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.rtllib_tkip_data*
  store %struct.rtllib_tkip_data* %7, %struct.rtllib_tkip_data** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %10 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %13 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %16 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 24
  %19 = and i32 %18, 255
  %20 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %21 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %26 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %31 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  %34 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %35 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %40 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  %43 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %44 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 24
  %47 = and i32 %46, 255
  %48 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %49 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %54 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = and i32 %56, 255
  %58 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %59 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 255
  %62 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %63 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %68 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 255
  %71 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %72 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %75 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rtllib_tkip_data*, %struct.rtllib_tkip_data** %5, align 8
  %78 = getelementptr inbounds %struct.rtllib_tkip_data, %struct.rtllib_tkip_data* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %19, i32 %24, i32 %29, i32 %33, i32 %38, i32 %42, i32 %47, i32 %52, i32 %57, i32 %61, i32 %66, i32 %70, i32 %73, i32 %76, i32 %79)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
