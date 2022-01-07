; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64, %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fcoe_rport = type { i64, i32, i32, i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.fc_rport_priv = type { i32, i32, %struct.fc_rport_identifiers, i32, i32* }
%struct.fc_rport_identifiers = type { i32, i32 }

@fcoe_ctlr_vn_rport_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"vn_add rport logoff %6.6x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"vn_add rport %6.6x %s state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.fcoe_rport*)* @fcoe_ctlr_vn_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_add(%struct.fcoe_ctlr* %0, %struct.fcoe_rport* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fcoe_rport*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_rport_priv*, align 8
  %7 = alloca %struct.fc_rport_identifiers*, align 8
  %8 = alloca %struct.fcoe_rport*, align 8
  %9 = alloca i64, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.fcoe_rport* %1, %struct.fcoe_rport** %4, align 8
  %10 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %11 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %10, i32 0, i32 1
  %12 = load %struct.fc_lport*, %struct.fc_lport** %11, align 8
  store %struct.fc_lport* %12, %struct.fc_lport** %5, align 8
  %13 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %14 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %20 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %163

24:                                               ; preds = %2
  %25 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call %struct.fc_rport_priv* @fc_rport_create(%struct.fc_lport* %29, i64 %30)
  store %struct.fc_rport_priv* %31, %struct.fc_rport_priv** %6, align 8
  %32 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %33 = icmp ne %struct.fc_rport_priv* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %36 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %163

39:                                               ; preds = %24
  %40 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %41 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %44 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %48 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %47, i32 0, i32 4
  store i32* @fcoe_ctlr_vn_rport_ops, i32** %48, align 8
  %49 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %50 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %54 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %56 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %55, i32 0, i32 2
  store %struct.fc_rport_identifiers* %56, %struct.fc_rport_identifiers** %7, align 8
  %57 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %7, align 8
  %58 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %71

61:                                               ; preds = %39
  %62 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %7, align 8
  %63 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %66 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %64, %69
  br i1 %70, label %86, label %71

71:                                               ; preds = %61, %39
  %72 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %7, align 8
  %73 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %7, align 8
  %78 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %81 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %79, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %76, %61
  %87 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %88 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 (%struct.fcoe_ctlr*, i8*, i64, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %91)
  %93 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %94 = call i32 @fc_rport_logoff(%struct.fc_rport_priv* %93)
  %95 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %96 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %95, i32 0, i32 1
  %97 = call i32 @mutex_lock(i32* %96)
  br label %98

98:                                               ; preds = %86, %76, %71
  %99 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %100 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %7, align 8
  %105 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %107 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %7, align 8
  %112 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %114 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %113, i32 0, i32 1
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %117 = call %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv* %116)
  store %struct.fcoe_rport* %117, %struct.fcoe_rport** %8, align 8
  %118 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %121 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %126 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %127 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (%struct.fcoe_ctlr*, i8*, i64, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %119, i8* %125, i32 %128)
  %130 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %131 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %134 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %133, i32 0, i32 5
  store i64 %132, i64* %134, align 8
  %135 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %136 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %139 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %141 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %144 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %146 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %149 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @ETH_ALEN, align 4
  %152 = call i32 @memcpy(i32 %147, i32 %150, i32 %151)
  %153 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %154 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %157 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ETH_ALEN, align 4
  %160 = call i32 @memcpy(i32 %155, i32 %158, i32 %159)
  %161 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %162 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %161, i32 0, i32 0
  store i64 0, i64* %162, align 8
  br label %163

163:                                              ; preds = %98, %34, %23
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fc_rport_priv* @fc_rport_create(%struct.fc_lport*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, i64, ...) #1

declare dso_local i32 @fc_rport_logoff(%struct.fc_rport_priv*) #1

declare dso_local %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
