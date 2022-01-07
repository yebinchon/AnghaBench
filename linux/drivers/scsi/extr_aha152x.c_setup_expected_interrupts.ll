; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_setup_expected_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_setup_expected_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CURRENT_SC = common dso_local global %struct.TYPE_6__* null, align 8
@selecting = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@SELTO = common dso_local global i32 0, align 4
@SIMODE0 = common dso_local global i32 0, align 4
@ENSELDO = common dso_local global i32 0, align 4
@DISCONNECTED_SC = common dso_local global i64 0, align 8
@ENSELDI = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@ENSELTIMO = common dso_local global i32 0, align 4
@spiordy = common dso_local global i32 0, align 4
@ENSPIORDY = common dso_local global i32 0, align 4
@ENPHASEMIS = common dso_local global i32 0, align 4
@ENSCSIRST = common dso_local global i32 0, align 4
@ENSCSIPERR = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i32 0, align 4
@STATE = common dso_local global i64 0, align 8
@seldi = common dso_local global i64 0, align 8
@ISSUE_SC = common dso_local global i64 0, align 8
@DONE_SC = common dso_local global i64 0, align 8
@DMACNTRL0 = common dso_local global i32 0, align 4
@INTEN = common dso_local global i32 0, align 4
@DMASTAT = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @setup_expected_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_expected_interrupts(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CURRENT_SC, align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  br i1 %4, label %5, label %61

5:                                                ; preds = %1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CURRENT_SC, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, 65536
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CURRENT_SC, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @selecting, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %5
  %19 = load i32, i32* @SSTAT1, align 4
  %20 = load i32, i32* @SELTO, align 4
  %21 = call i32 @SETPORT(i32 %19, i32 %20)
  %22 = load i32, i32* @SIMODE0, align 4
  %23 = load i32, i32* @ENSELDO, align 4
  %24 = load i64, i64* @DISCONNECTED_SC, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @ENSELDI, align 4
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = or i32 %23, %30
  %32 = call i32 @SETPORT(i32 %22, i32 %31)
  %33 = load i32, i32* @SIMODE1, align 4
  %34 = load i32, i32* @ENSELTIMO, align 4
  %35 = call i32 @SETPORT(i32 %33, i32 %34)
  br label %60

36:                                               ; preds = %5
  %37 = load i32, i32* @SIMODE0, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CURRENT_SC, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @spiordy, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @ENSPIORDY, align 4
  br label %48

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = call i32 @SETPORT(i32 %37, i32 %49)
  %51 = load i32, i32* @SIMODE1, align 4
  %52 = load i32, i32* @ENPHASEMIS, align 4
  %53 = load i32, i32* @ENSCSIRST, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ENSCSIPERR, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ENBUSFREE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @SETPORT(i32 %51, i32 %58)
  br label %60

60:                                               ; preds = %48, %29
  br label %102

61:                                               ; preds = %1
  %62 = load i64, i64* @STATE, align 8
  %63 = load i64, i64* @seldi, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i32, i32* @SIMODE0, align 4
  %67 = call i32 @SETPORT(i32 %66, i32 0)
  %68 = load i32, i32* @SIMODE1, align 4
  %69 = load i32, i32* @ENPHASEMIS, align 4
  %70 = load i32, i32* @ENSCSIRST, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @ENSCSIPERR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @ENBUSFREE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @SETPORT(i32 %68, i32 %75)
  br label %101

77:                                               ; preds = %61
  %78 = load i32, i32* @SIMODE0, align 4
  %79 = load i64, i64* @DISCONNECTED_SC, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @ENSELDI, align 4
  br label %84

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  %86 = call i32 @SETPORT(i32 %78, i32 %85)
  %87 = load i32, i32* @SIMODE1, align 4
  %88 = load i32, i32* @ENSCSIRST, align 4
  %89 = load i64, i64* @ISSUE_SC, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  %92 = load i64, i64* @DONE_SC, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91, %84
  %95 = load i32, i32* @ENBUSFREE, align 4
  br label %97

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %99 = or i32 %88, %98
  %100 = call i32 @SETPORT(i32 %87, i32 %99)
  br label %101

101:                                              ; preds = %97, %65
  br label %102

102:                                              ; preds = %101, %60
  %103 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %104 = call %struct.TYPE_5__* @HOSTDATA(%struct.Scsi_Host* %103)
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @DMACNTRL0, align 4
  %110 = load i32, i32* @INTEN, align 4
  %111 = call i32 @SETBITS(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %102
  %113 = load i32, i32* @DMASTAT, align 4
  %114 = load i32, i32* @INTSTAT, align 4
  %115 = call i32 @TESTHI(i32 %113, i32 %114)
  ret i32 %115
}

declare dso_local i32 @SETPORT(i32, i32) #1

declare dso_local %struct.TYPE_5__* @HOSTDATA(%struct.Scsi_Host*) #1

declare dso_local i32 @SETBITS(i32, i32) #1

declare dso_local i32 @TESTHI(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
