; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_zbc.c_NULL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_zbc.c_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.blk_zone = type { i32 }
%struct.scsi_disk = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_zbc_report_zones(%struct.gendisk* %0, i32 %1, %struct.blk_zone* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.blk_zone*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.scsi_disk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.blk_zone* %2, %struct.blk_zone** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %18 = call %struct.scsi_disk* @scsi_disk(%struct.gendisk* %17)
  store %struct.scsi_disk* %18, %struct.scsi_disk** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %22 = call i32 @sd_is_zoned(%struct.scsi_disk* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %81

27:                                               ; preds = %4
  %28 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i8* @sd_zbc_alloc_report_buffer(%struct.scsi_disk* %28, i32 %29, i64* %14)
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %81

36:                                               ; preds = %27
  %37 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %41 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @sectors_to_logical(i32 %42, i32 %43)
  %45 = call i32 @sd_zbc_do_report_zones(%struct.scsi_disk* %37, i8* %38, i64 %39, i32 %44, i32 1)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %77

49:                                               ; preds = %36
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %13, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = call i32 @get_unaligned_be32(i8* %52)
  %54 = sdiv i32 %53, 64
  %55 = call i32 @min(i32 %50, i32 %54)
  store i32 %55, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %71, %49
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i64, i64* %15, align 8
  %62 = add i64 %61, 64
  store i64 %62, i64* %15, align 8
  %63 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %68 = call i32 @sd_zbc_parse_report(%struct.scsi_disk* %63, i8* %66, %struct.blk_zone* %67)
  %69 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %70 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %69, i32 1
  store %struct.blk_zone* %70, %struct.blk_zone** %8, align 8
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %48
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @kvfree(i8* %78)
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %33, %24
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.scsi_disk* @scsi_disk(%struct.gendisk*) #1

declare dso_local i32 @sd_is_zoned(%struct.scsi_disk*) #1

declare dso_local i8* @sd_zbc_alloc_report_buffer(%struct.scsi_disk*, i32, i64*) #1

declare dso_local i32 @sd_zbc_do_report_zones(%struct.scsi_disk*, i8*, i64, i32, i32) #1

declare dso_local i32 @sectors_to_logical(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i32 @sd_zbc_parse_report(%struct.scsi_disk*, i8*, %struct.blk_zone*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
