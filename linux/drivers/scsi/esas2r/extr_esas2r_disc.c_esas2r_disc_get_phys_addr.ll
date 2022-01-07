; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_get_phys_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_get_phys_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_sg_context = type { i64, %struct.esas2r_adapter* }
%struct.esas2r_adapter = type { i32*, i64, i64 }

@ESAS2R_DISC_BUF_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.esas2r_sg_context*, i64*)* @esas2r_disc_get_phys_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @esas2r_disc_get_phys_addr(%struct.esas2r_sg_context* %0, i64* %1) #0 {
  %3 = alloca %struct.esas2r_sg_context*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.esas2r_adapter*, align 8
  store %struct.esas2r_sg_context* %0, %struct.esas2r_sg_context** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %3, align 8
  %7 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %6, i32 0, i32 1
  %8 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %7, align 8
  store %struct.esas2r_adapter* %8, %struct.esas2r_adapter** %5, align 8
  %9 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %3, align 8
  %10 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ESAS2R_DISC_BUF_LEN, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (...) @esas2r_bugon()
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = ptrtoint i32* %23 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = add nsw i64 %19, %30
  %32 = load i64*, i64** %4, align 8
  store i64 %31, i64* %32, align 8
  %33 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %3, align 8
  %34 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  ret i64 %35
}

declare dso_local i32 @esas2r_bugon(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
