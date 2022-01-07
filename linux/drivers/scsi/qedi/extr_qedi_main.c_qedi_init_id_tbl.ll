; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_init_id_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_init_id_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_portid_tbl = type { i32, i32, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_portid_tbl*, i8*, i8*, i8*)* @qedi_init_id_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_init_id_tbl(%struct.qedi_portid_tbl* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedi_portid_tbl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.qedi_portid_tbl* %0, %struct.qedi_portid_tbl** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %6, align 8
  %12 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %11, i32 0, i32 4
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %6, align 8
  %15 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %6, align 8
  %18 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %6, align 8
  %20 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @BITS_TO_LONGS(i8* %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @kcalloc(i32 %23, i32 8, i32 %24)
  %26 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %6, align 8
  %27 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %6, align 8
  %29 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %36

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
