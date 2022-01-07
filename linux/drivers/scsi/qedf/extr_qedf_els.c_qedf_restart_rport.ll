; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_restart_rport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_restart_rport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_rport = type { i32, %struct.fc_rport_priv*, %struct.TYPE_5__*, i32 }
%struct.fc_rport_priv = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.qedf_rport* }
%struct.TYPE_5__ = type { i32, %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"fcport is NULL.\0A\00", align 1
@QEDF_RPORT_IN_RESET = common dso_local global i32 0, align 4
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@QEDF_RPORT_UPLOADING_CONNECTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"fcport %p already in reset or not offloaded.\0A\00", align 1
@RPORT_ST_READY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"LOGO port_id=%x.\0A\00", align 1
@fc_rport_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_restart_rport(%struct.qedf_rport* %0) #0 {
  %2 = alloca %struct.qedf_rport*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_rport_priv*, align 8
  %5 = alloca %struct.qedf_rport*, align 8
  %6 = alloca i64, align 8
  store %struct.qedf_rport* %0, %struct.qedf_rport** %2, align 8
  %7 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %8 = icmp ne %struct.qedf_rport* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %129

11:                                               ; preds = %1
  %12 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %13 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %12, i32 0, i32 3
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* @QEDF_RPORT_IN_RESET, align 4
  %17 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %18 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %23 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %24 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* @QEDF_RPORT_UPLOADING_CONNECTION, align 4
  %29 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %30 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27, %21, %11
  %34 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %35 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %39 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.qedf_rport* %38)
  %40 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %41 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %40, i32 0, i32 3
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %129

44:                                               ; preds = %27
  %45 = load i32, i32* @QEDF_RPORT_IN_RESET, align 4
  %46 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %47 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %46, i32 0, i32 0
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  %49 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %50 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %49, i32 0, i32 3
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %54 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %53, i32 0, i32 1
  %55 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %54, align 8
  store %struct.fc_rport_priv* %55, %struct.fc_rport_priv** %4, align 8
  %56 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %57 = icmp ne %struct.fc_rport_priv* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %44
  %59 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %60 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %59, i32 0, i32 1
  %61 = call i32 @kref_get_unless_zero(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %65 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %64, i32 0, i32 1
  store %struct.fc_rport_priv* null, %struct.fc_rport_priv** %65, align 8
  store %struct.fc_rport_priv* null, %struct.fc_rport_priv** %4, align 8
  br label %66

66:                                               ; preds = %63, %58, %44
  %67 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %68 = icmp ne %struct.fc_rport_priv* %67, null
  br i1 %68, label %69, label %124

69:                                               ; preds = %66
  %70 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %71 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @RPORT_ST_READY, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %124

75:                                               ; preds = %69
  %76 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %77 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load %struct.fc_lport*, %struct.fc_lport** %79, align 8
  store %struct.fc_lport* %80, %struct.fc_lport** %3, align 8
  %81 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %82 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.qedf_rport*, %struct.qedf_rport** %83, align 8
  store %struct.qedf_rport* %84, %struct.qedf_rport** %5, align 8
  %85 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %86 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %90 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.qedf_rport* %89)
  %91 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %92 = call i32 @fc_rport_logoff(%struct.fc_rport_priv* %91)
  %93 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %94 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %93, i32 0, i32 1
  %95 = load i32, i32* @fc_rport_destroy, align 4
  %96 = call i32 @kref_put(i32* %94, i32 %95)
  %97 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %98 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = call i32 @mutex_lock(i32* %99)
  %101 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %102 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %103 = call %struct.fc_rport_priv* @fc_rport_create(%struct.fc_lport* %101, %struct.qedf_rport* %102)
  store %struct.fc_rport_priv* %103, %struct.fc_rport_priv** %4, align 8
  %104 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %105 = icmp ne %struct.fc_rport_priv* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %75
  %107 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %108 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %112 = call i32 @fc_rport_login(%struct.fc_rport_priv* %111)
  %113 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %114 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %115 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %114, i32 0, i32 1
  store %struct.fc_rport_priv* %113, %struct.fc_rport_priv** %115, align 8
  br label %123

116:                                              ; preds = %75
  %117 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %118 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %122 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %121, i32 0, i32 1
  store %struct.fc_rport_priv* null, %struct.fc_rport_priv** %122, align 8
  br label %123

123:                                              ; preds = %116, %106
  br label %124

124:                                              ; preds = %123, %69, %66
  %125 = load i32, i32* @QEDF_RPORT_IN_RESET, align 4
  %126 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %127 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %126, i32 0, i32 0
  %128 = call i32 @clear_bit(i32 %125, i32* %127)
  br label %129

129:                                              ; preds = %124, %33, %9
  ret void
}

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @fc_rport_logoff(%struct.fc_rport_priv*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fc_rport_priv* @fc_rport_create(%struct.fc_lport*, %struct.qedf_rport*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_rport_login(%struct.fc_rport_priv*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
