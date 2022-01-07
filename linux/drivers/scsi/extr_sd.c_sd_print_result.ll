; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_print_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_print_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: Result: hostbyte=%s driverbyte=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"%s: Result: hostbyte=0x%02x driverbyte=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, i8*, i32)* @sd_print_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_print_result(%struct.scsi_disk* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_disk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.scsi_disk* %0, %struct.scsi_disk** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i8* @scsi_hostbyte_string(i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i8* @scsi_driverbyte_string(i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @KERN_INFO, align 4
  %20 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %26 ]
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i8* [ %32, %31 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %33 ]
  %36 = call i32 @sd_printk(i32 %19, %struct.scsi_disk* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %28, i8* %35)
  br label %46

37:                                               ; preds = %15
  %38 = load i32, i32* @KERN_INFO, align 4
  %39 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i8* @host_byte(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @driver_byte(i32 %43)
  %45 = call i32 @sd_printk(i32 %38, %struct.scsi_disk* %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %42, i8* %44)
  br label %46

46:                                               ; preds = %37, %34
  ret void
}

declare dso_local i8* @scsi_hostbyte_string(i32) #1

declare dso_local i8* @scsi_driverbyte_string(i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @host_byte(i32) #1

declare dso_local i8* @driver_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
