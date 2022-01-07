; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_cmd-db.c_cmd_db_read_aux_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_cmd-db.c_cmd_db_read_aux_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry_header = type { i32 }
%struct.rsc_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cmd_db_read_aux_data(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.entry_header*, align 8
  %8 = alloca %struct.rsc_hdr*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @cmd_db_get_header(i8* %9, %struct.entry_header** %7, %struct.rsc_hdr** %8)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @ERR_PTR(i32 %14)
  store i8* %15, i8** %3, align 8
  br label %29

16:                                               ; preds = %2
  %17 = load i64*, i64** %5, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.entry_header*, %struct.entry_header** %7, align 8
  %21 = getelementptr inbounds %struct.entry_header, %struct.entry_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le16_to_cpu(i32 %22)
  %24 = load i64*, i64** %5, align 8
  store i64 %23, i64* %24, align 8
  br label %25

25:                                               ; preds = %19, %16
  %26 = load %struct.rsc_hdr*, %struct.rsc_hdr** %8, align 8
  %27 = load %struct.entry_header*, %struct.entry_header** %7, align 8
  %28 = call i8* @rsc_offset(%struct.rsc_hdr* %26, %struct.entry_header* %27)
  store i8* %28, i8** %3, align 8
  br label %29

29:                                               ; preds = %25, %13
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local i32 @cmd_db_get_header(i8*, %struct.entry_header**, %struct.rsc_hdr**) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i8* @rsc_offset(%struct.rsc_hdr*, %struct.entry_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
