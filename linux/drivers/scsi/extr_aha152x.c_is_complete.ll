; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_is_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_is_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)*, i64, i32 (%struct.Scsi_Host*)* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32*, i32*, i32* }

@.str = private unnamed_addr constant [30 x i8] c"bottom-half already running!?\00", align 1
@jiffies = common dso_local global i64 0, align 8
@PREVSTATE = common dso_local global i64 0, align 8
@STATE = common dso_local global i64 0, align 8
@states = common dso_local global %struct.TYPE_7__* null, align 8
@SXFRCTL0 = common dso_local global i32 0, align 4
@CH1 = common dso_local global i32 0, align 4
@DMACNTRL0 = common dso_local global i32 0, align 4
@CURRENT_SC = common dso_local global %struct.TYPE_8__* null, align 8
@spiordy = common dso_local global i32 0, align 4
@SSTAT0 = common dso_local global i32 0, align 4
@REQINIT = common dso_local global i32 0, align 4
@SCSISIG = common dso_local global i32 0, align 4
@P_MASK = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@PHASECHG = common dso_local global i32 0, align 4
@SPIOEN = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unexpected state (%x)\0A\00", align 1
@INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @is_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @is_complete(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %8 = icmp ne %struct.Scsi_Host* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %202

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @DO_LOCK(i64 %11)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %14 = call %struct.TYPE_9__* @HOSTDATA(%struct.Scsi_Host* %13)
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @DO_UNLOCK(i64 %19)
  br label %202

21:                                               ; preds = %10
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %23 = call %struct.TYPE_9__* @HOSTDATA(%struct.Scsi_Host* %22)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %26 = call %struct.TYPE_9__* @HOSTDATA(%struct.Scsi_Host* %25)
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @DO_UNLOCK(i64 %31)
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %34 = call i32 @aha152x_error(%struct.Scsi_Host* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %21
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %37 = call %struct.TYPE_9__* @HOSTDATA(%struct.Scsi_Host* %36)
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %188, %35
  %42 = load i64, i64* @jiffies, align 8
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @DO_UNLOCK(i64 %43)
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %46 = call i32 @update_state(%struct.Scsi_Host* %45)
  store i32 %46, i32* %3, align 4
  %47 = load i64, i64* @PREVSTATE, align 8
  %48 = load i64, i64* @STATE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %41
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @states, align 8
  %52 = load i64, i64* @PREVSTATE, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %54, align 8
  %56 = icmp ne i32 (%struct.Scsi_Host*)* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @states, align 8
  %59 = load i64, i64* @PREVSTATE, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %61, align 8
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %64 = call i32 %62(%struct.Scsi_Host* %63)
  br label %65

65:                                               ; preds = %57, %50, %41
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @states, align 8
  %67 = load i64, i64* @PREVSTATE, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %65
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @states, align 8
  %74 = load i64, i64* @STATE, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @SXFRCTL0, align 4
  %81 = load i32, i32* @CH1, align 4
  %82 = call i32 @SETPORT(i32 %80, i32 %81)
  %83 = load i32, i32* @DMACNTRL0, align 4
  %84 = call i32 @SETPORT(i32 %83, i32 0)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load i32, i32* @spiordy, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %89
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %87, %79
  br label %96

96:                                               ; preds = %95, %72, %65
  %97 = load i32, i32* %3, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i32, i32* @SSTAT0, align 4
  %101 = load i32, i32* @REQINIT, align 4
  %102 = call i32 @SETPORT(i32 %100, i32 %101)
  %103 = load i32, i32* @SCSISIG, align 4
  %104 = load i32, i32* @SCSISIG, align 4
  %105 = call i32 @GETPORT(i32 %104)
  %106 = load i32, i32* @P_MASK, align 4
  %107 = and i32 %105, %106
  %108 = call i32 @SETPORT(i32 %103, i32 %107)
  %109 = load i32, i32* @SSTAT1, align 4
  %110 = load i32, i32* @PHASECHG, align 4
  %111 = call i32 @SETPORT(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %99, %96
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @states, align 8
  %114 = load i64, i64* @PREVSTATE, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %144, label %119

119:                                              ; preds = %112
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** @states, align 8
  %121 = load i64, i64* @STATE, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %119
  %127 = load i32, i32* @DMACNTRL0, align 4
  %128 = call i32 @SETPORT(i32 %127, i32 0)
  %129 = load i32, i32* @SXFRCTL0, align 4
  %130 = load i32, i32* @CH1, align 4
  %131 = load i32, i32* @SPIOEN, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @SETPORT(i32 %129, i32 %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %135 = icmp ne %struct.TYPE_8__* %134, null
  br i1 %135, label %136, label %143

136:                                              ; preds = %126
  %137 = load i32, i32* @spiordy, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %137
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %136, %126
  br label %144

144:                                              ; preds = %143, %119, %112
  %145 = load i64, i64* @PREVSTATE, align 8
  %146 = load i64, i64* @STATE, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** @states, align 8
  %150 = load i64, i64* @STATE, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %152, align 8
  %154 = icmp ne i32 (%struct.Scsi_Host*)* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %148
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** @states, align 8
  %157 = load i64, i64* @STATE, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %159, align 8
  %161 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %162 = call i32 %160(%struct.Scsi_Host* %161)
  br label %163

163:                                              ; preds = %155, %148, %144
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** @states, align 8
  %165 = load i64, i64* @STATE, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %167, align 8
  %169 = icmp ne i32 (%struct.Scsi_Host*)* %168, null
  br i1 %169, label %170, label %178

170:                                              ; preds = %163
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** @states, align 8
  %172 = load i64, i64* @STATE, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %174, align 8
  %176 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %177 = call i32 %175(%struct.Scsi_Host* %176)
  br label %183

178:                                              ; preds = %163
  %179 = load i32, i32* @KERN_ERR, align 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CURRENT_SC, align 8
  %181 = load i64, i64* @STATE, align 8
  %182 = call i32 @scmd_printk(i32 %179, %struct.TYPE_8__* %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %181)
  br label %183

183:                                              ; preds = %178, %170
  %184 = load i64, i64* %4, align 8
  %185 = call i32 @DO_LOCK(i64 %184)
  %186 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %187 = call i32 @setup_expected_interrupts(%struct.Scsi_Host* %186)
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %183
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %41, label %191

191:                                              ; preds = %188
  %192 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %193 = call %struct.TYPE_9__* @HOSTDATA(%struct.Scsi_Host* %192)
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, -1
  store i64 %196, i64* %194, align 8
  %197 = load i32, i32* @DMACNTRL0, align 4
  %198 = load i32, i32* @INTEN, align 4
  %199 = call i32 @SETBITS(i32 %197, i32 %198)
  %200 = load i64, i64* %4, align 8
  %201 = call i32 @DO_UNLOCK(i64 %200)
  br label %202

202:                                              ; preds = %191, %18, %9
  ret void
}

declare dso_local i32 @DO_LOCK(i64) #1

declare dso_local %struct.TYPE_9__* @HOSTDATA(%struct.Scsi_Host*) #1

declare dso_local i32 @DO_UNLOCK(i64) #1

declare dso_local i32 @aha152x_error(%struct.Scsi_Host*, i8*) #1

declare dso_local i32 @update_state(%struct.Scsi_Host*) #1

declare dso_local i32 @SETPORT(i32, i32) #1

declare dso_local i32 @GETPORT(i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @setup_expected_interrupts(%struct.Scsi_Host*) #1

declare dso_local i32 @SETBITS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
