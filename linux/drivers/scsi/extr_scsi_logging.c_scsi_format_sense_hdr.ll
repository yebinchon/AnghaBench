; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_format_sense_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_format_sense_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Sense Key : \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"0x%x \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"[deferred] \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"[current] \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"[descriptor] \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, %struct.scsi_sense_hdr*)* @scsi_format_sense_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scsi_format_sense_hdr(i8* %0, i64 %1, %struct.scsi_sense_hdr* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scsi_sense_hdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.scsi_sense_hdr* %2, %struct.scsi_sense_hdr** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %9, i64 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 %11, i64* %8, align 8
  %12 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %13 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @scsi_sense_key_string(i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub i64 %22, %23
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %21, i64 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %8, align 8
  br label %42

29:                                               ; preds = %3
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %33, %34
  %36 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %37 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %32, i64 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %29, %18
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub i64 %46, %47
  %49 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %50 = call i64 @scsi_sense_is_deferred(%struct.scsi_sense_hdr* %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  %54 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %45, i64 %48, i8* %53)
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %8, align 8
  %57 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %58 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 114
  br i1 %60, label %61, label %71

61:                                               ; preds = %42
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %8, align 8
  %67 = sub i64 %65, %66
  %68 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %64, i64 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %61, %42
  %72 = load i64, i64* %8, align 8
  ret i64 %72
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i8* @scsi_sense_key_string(i32) #1

declare dso_local i64 @scsi_sense_is_deferred(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
