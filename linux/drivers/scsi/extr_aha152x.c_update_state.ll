; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_update_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@SSTAT0 = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@STATE = common dso_local global i64 0, align 8
@PREVSTATE = common dso_local global i64 0, align 8
@unknown = common dso_local global i64 0, align 8
@SCSIRSTI = common dso_local global i32 0, align 4
@rsti = common dso_local global i64 0, align 8
@SCSISEQ = common dso_local global i32 0, align 4
@SELDI = common dso_local global i32 0, align 4
@busfree = common dso_local global i64 0, align 8
@seldi = common dso_local global i64 0, align 8
@SELDO = common dso_local global i32 0, align 4
@CURRENT_SC = common dso_local global %struct.TYPE_5__* null, align 8
@selecting = common dso_local global i32 0, align 4
@seldo = common dso_local global i64 0, align 8
@SELTO = common dso_local global i32 0, align 4
@selto = common dso_local global i64 0, align 8
@BUSFREE = common dso_local global i32 0, align 4
@SCSIPERR = common dso_local global i32 0, align 4
@parerr = common dso_local global i64 0, align 8
@REQINIT = common dso_local global i32 0, align 4
@SCSISIG = common dso_local global i32 0, align 4
@P_MASK = common dso_local global i32 0, align 4
@msgi = common dso_local global i64 0, align 8
@msgo = common dso_local global i64 0, align 8
@datao = common dso_local global i64 0, align 8
@datai = common dso_local global i64 0, align 8
@status = common dso_local global i64 0, align 8
@cmd = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"reselection missed?\00", align 1
@LASTSTATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_state(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @SSTAT0, align 4
  %7 = call i32 @GETPORT(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @SSTAT1, align 4
  %9 = call i32 @GETPORT(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* @STATE, align 8
  store i64 %10, i64* @PREVSTATE, align 8
  %11 = load i64, i64* @unknown, align 8
  store i64 %11, i64* @STATE, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SCSIRSTI, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i64, i64* @rsti, align 8
  store i64 %17, i64* @STATE, align 8
  %18 = load i32, i32* @SCSISEQ, align 4
  %19 = call i32 @SETPORT(i32 %18, i32 0)
  %20 = load i32, i32* @SSTAT1, align 4
  %21 = load i32, i32* @SCSIRSTI, align 4
  %22 = call i32 @SETPORT(i32 %20, i32 %21)
  br label %108

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SELDI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i64, i64* @PREVSTATE, align 8
  %30 = load i64, i64* @busfree, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @seldi, align 8
  store i64 %33, i64* @STATE, align 8
  br label %107

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SELDO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CURRENT_SC, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CURRENT_SC, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @selecting, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i64, i64* @seldo, align 8
  store i64 %51, i64* @STATE, align 8
  br label %106

52:                                               ; preds = %42, %39, %34
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SELTO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* @selto, align 8
  store i64 %58, i64* @STATE, align 8
  br label %105

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @BUSFREE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i64, i64* @busfree, align 8
  store i64 %65, i64* @STATE, align 8
  %66 = load i32, i32* @SSTAT1, align 4
  %67 = load i32, i32* @BUSFREE, align 4
  %68 = call i32 @SETPORT(i32 %66, i32 %67)
  br label %104

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SCSIPERR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i64, i64* @parerr, align 8
  store i64 %75, i64* @STATE, align 8
  %76 = load i32, i32* @SSTAT1, align 4
  %77 = load i32, i32* @SCSIPERR, align 4
  %78 = call i32 @SETPORT(i32 %76, i32 %77)
  br label %103

79:                                               ; preds = %69
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @REQINIT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %79
  %85 = load i32, i32* @SCSISIG, align 4
  %86 = call i32 @GETPORT(i32 %85)
  %87 = load i32, i32* @P_MASK, align 4
  %88 = and i32 %86, %87
  switch i32 %88, label %101 [
    i32 130, label %89
    i32 129, label %91
    i32 131, label %93
    i32 132, label %95
    i32 128, label %97
    i32 133, label %99
  ]

89:                                               ; preds = %84
  %90 = load i64, i64* @msgi, align 8
  store i64 %90, i64* @STATE, align 8
  br label %101

91:                                               ; preds = %84
  %92 = load i64, i64* @msgo, align 8
  store i64 %92, i64* @STATE, align 8
  br label %101

93:                                               ; preds = %84
  %94 = load i64, i64* @datao, align 8
  store i64 %94, i64* @STATE, align 8
  br label %101

95:                                               ; preds = %84
  %96 = load i64, i64* @datai, align 8
  store i64 %96, i64* @STATE, align 8
  br label %101

97:                                               ; preds = %84
  %98 = load i64, i64* @status, align 8
  store i64 %98, i64* @STATE, align 8
  br label %101

99:                                               ; preds = %84
  %100 = load i64, i64* @cmd, align 8
  store i64 %100, i64* @STATE, align 8
  br label %101

101:                                              ; preds = %84, %99, %97, %95, %93, %91, %89
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %79
  br label %103

103:                                              ; preds = %102, %74
  br label %104

104:                                              ; preds = %103, %64
  br label %105

105:                                              ; preds = %104, %57
  br label %106

106:                                              ; preds = %105, %50
  br label %107

107:                                              ; preds = %106, %32
  br label %108

108:                                              ; preds = %107, %16
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @SELDI, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load i64, i64* @STATE, align 8
  %115 = load i64, i64* @seldi, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i32, i32* %3, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @KERN_INFO, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CURRENT_SC, align 8
  %123 = call i32 @scmd_printk(i32 %121, %struct.TYPE_5__* %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %124

124:                                              ; preds = %120, %117, %113, %108
  %125 = load i64, i64* @STATE, align 8
  %126 = load i64, i64* @PREVSTATE, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i64, i64* @PREVSTATE, align 8
  store i64 %129, i64* @LASTSTATE, align 8
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @GETPORT(i32) #1

declare dso_local i32 @SETPORT(i32, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
