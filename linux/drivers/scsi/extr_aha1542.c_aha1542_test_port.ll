; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_test_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_test_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@SRST = common dso_local global i32 0, align 4
@IRST = common dso_local global i32 0, align 4
@STATMASK = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@IDLE = common dso_local global i32 0, align 4
@STST = common dso_local global i32 0, align 4
@DIAGF = common dso_local global i32 0, align 4
@INVDCMD = common dso_local global i32 0, align 4
@DF = common dso_local global i32 0, align 4
@CDF = common dso_local global i32 0, align 4
@INTRMASK = common dso_local global i32 0, align 4
@CMD_INQUIRY = common dso_local global i32 0, align 4
@HACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @aha1542_test_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha1542_test_port(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @STATUS(i32 %8)
  %10 = call i32 @inb(i32 %9)
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %115

13:                                               ; preds = %1
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @aha1542_intr_reset(i32 %16)
  %18 = load i32, i32* @SRST, align 4
  %19 = load i32, i32* @IRST, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CONTROL(i32 %23)
  %25 = call i32 @outb(i32 %20, i32 %24)
  %26 = call i32 @mdelay(i32 20)
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @STATUS(i32 %29)
  %31 = load i32, i32* @STATMASK, align 4
  %32 = load i32, i32* @INIT, align 4
  %33 = load i32, i32* @IDLE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @STST, align 4
  %36 = load i32, i32* @DIAGF, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @INVDCMD, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @DF, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CDF, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @wait_mask(i32 %30, i32 %31, i32 %34, i32 %43, i32 0)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %115

47:                                               ; preds = %13
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @INTRFLAGS(i32 %50)
  %52 = call i32 @inb(i32 %51)
  %53 = load i32, i32* @INTRMASK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %115

57:                                               ; preds = %47
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CMD_INQUIRY, align 4
  %62 = call i32 @aha1542_outb(i32 %60, i32 %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %85, %57
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %68 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @STATUS(i32 %69)
  %71 = load i32, i32* @DF, align 4
  %72 = load i32, i32* @DF, align 4
  %73 = call i32 @wait_mask(i32 %70, i32 %71, i32 %72, i32 0, i32 0)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %115

76:                                               ; preds = %66
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %78 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @DATA(i32 %79)
  %81 = call i32 @inb(i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %83
  store i32 %81, i32* %84, align 4
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %63

88:                                               ; preds = %63
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %90 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @STATUS(i32 %91)
  %93 = call i32 @inb(i32 %92)
  %94 = load i32, i32* @DF, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %115

98:                                               ; preds = %88
  %99 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %100 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @INTRFLAGS(i32 %101)
  %103 = load i32, i32* @HACC, align 4
  %104 = load i32, i32* @HACC, align 4
  %105 = call i32 @wait_mask(i32 %102, i32 %103, i32 %104, i32 0, i32 0)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %115

108:                                              ; preds = %98
  %109 = load i32, i32* @IRST, align 4
  %110 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %111 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @CONTROL(i32 %112)
  %114 = call i32 @outb(i32 %109, i32 %113)
  store i32 1, i32* %2, align 4
  br label %115

115:                                              ; preds = %108, %107, %97, %75, %56, %46, %12
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @STATUS(i32) #1

declare dso_local i32 @aha1542_intr_reset(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @CONTROL(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @wait_mask(i32, i32, i32, i32, i32) #1

declare dso_local i32 @INTRFLAGS(i32) #1

declare dso_local i32 @aha1542_outb(i32, i32) #1

declare dso_local i32 @DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
