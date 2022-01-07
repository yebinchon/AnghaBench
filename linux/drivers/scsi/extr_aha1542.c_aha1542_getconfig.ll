; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_getconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_getconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32 }

@DF = common dso_local global i32 0, align 4
@CMD_RETCONF = common dso_local global i32 0, align 4
@INTRMASK = common dso_local global i32 0, align 4
@HACC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"error querying board settings\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to determine DMA channel.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to determine IRQ level.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @aha1542_getconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha1542_getconfig(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @STATUS(i32 %8)
  %10 = call i32 @inb(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @DF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DATA(i32 %18)
  %20 = call i32 @inb(i32 %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CMD_RETCONF, align 4
  %26 = call i32 @aha1542_outb(i32 %24, i32 %25)
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %31 = call i32 @aha1542_in(i32 %29, i32* %30, i32 3, i32 0)
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @INTRFLAGS(i32 %34)
  %36 = load i32, i32* @INTRMASK, align 4
  %37 = load i32, i32* @HACC, align 4
  %38 = call i32 @wait_mask(i32 %35, i32 %36, i32 %37, i32 0, i32 0)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %21
  %41 = load i32, i32* @KERN_ERR, align 4
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %43 = call i32 @shost_printk(i32 %41, %struct.Scsi_Host* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %21
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %46 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @aha1542_intr_reset(i32 %47)
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %66 [
    i32 128, label %51
    i32 64, label %54
    i32 32, label %57
    i32 1, label %60
    i32 0, label %63
  ]

51:                                               ; preds = %44
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 0
  store i32 7, i32* %53, align 4
  br label %70

54:                                               ; preds = %44
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  store i32 6, i32* %56, align 4
  br label %70

57:                                               ; preds = %44
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 0
  store i32 5, i32* %59, align 4
  br label %70

60:                                               ; preds = %44
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %62 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  br label %70

63:                                               ; preds = %44
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 0
  store i32 255, i32* %65, align 4
  br label %70

66:                                               ; preds = %44
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %69 = call i32 @shost_printk(i32 %67, %struct.Scsi_Host* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %101

70:                                               ; preds = %63, %60, %57, %54, %51
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %91 [
    i32 64, label %73
    i32 32, label %76
    i32 8, label %79
    i32 4, label %82
    i32 2, label %85
    i32 1, label %88
  ]

73:                                               ; preds = %70
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 1
  store i32 15, i32* %75, align 4
  br label %95

76:                                               ; preds = %70
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %78 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %77, i32 0, i32 1
  store i32 14, i32* %78, align 4
  br label %95

79:                                               ; preds = %70
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %81 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %80, i32 0, i32 1
  store i32 12, i32* %81, align 4
  br label %95

82:                                               ; preds = %70
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %84 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %83, i32 0, i32 1
  store i32 11, i32* %84, align 4
  br label %95

85:                                               ; preds = %70
  %86 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %87 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %86, i32 0, i32 1
  store i32 10, i32* %87, align 4
  br label %95

88:                                               ; preds = %70
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %90 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %89, i32 0, i32 1
  store i32 9, i32* %90, align 4
  br label %95

91:                                               ; preds = %70
  %92 = load i32, i32* @KERN_ERR, align 4
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %94 = call i32 @shost_printk(i32 %92, %struct.Scsi_Host* %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %101

95:                                               ; preds = %88, %85, %82, %79, %76, %73
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 7
  %99 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %100 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %95, %91, %66
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @STATUS(i32) #1

declare dso_local i32 @DATA(i32) #1

declare dso_local i32 @aha1542_outb(i32, i32) #1

declare dso_local i32 @aha1542_in(i32, i32*, i32, i32) #1

declare dso_local i32 @wait_mask(i32, i32, i32, i32, i32) #1

declare dso_local i32 @INTRFLAGS(i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @aha1542_intr_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
