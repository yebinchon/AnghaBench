; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_log_hard_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_log_hard_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sym_hcb = type { i32, i32, i32, i32, i32, i64, i64 }

@nc_dsp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"scripta\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"scriptb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"%s:%d: ERROR (%x:%x) (%x-%x-%x) (%x/%x/%x) @ (%s %x:%08x).\0A\00", align 1
@nc_sdid = common dso_local global i32 0, align 4
@nc_socl = common dso_local global i32 0, align 4
@nc_sbcl = common dso_local global i32 0, align 4
@nc_sbdl = common dso_local global i32 0, align 4
@nc_sxfer = common dso_local global i32 0, align 4
@nc_scntl3 = common dso_local global i32 0, align 4
@FE_C10 = common dso_local global i32 0, align 4
@nc_scntl4 = common dso_local global i32 0, align 4
@nc_dbc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"%s: script cmd = %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s: regdump:\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@MDPE = common dso_local global i32 0, align 4
@BF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, i32, i32)* @sym_log_hard_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_log_hard_error(%struct.Scsi_Host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sym_hcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = call %struct.sym_hcb* @sym_get_hcb(%struct.Scsi_Host* %14)
  store %struct.sym_hcb* %15, %struct.sym_hcb** %7, align 8
  %16 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %17 = load i32, i32* @nc_dsp, align 4
  %18 = call i32 @INL(%struct.sym_hcb* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %21 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %27 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %30 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = icmp sle i32 %25, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %37 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %41 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %44 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %12, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %79

47:                                               ; preds = %24, %3
  %48 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %49 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %56 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %59 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = icmp sle i32 %54, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %66 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  store i32 %68, i32* %9, align 4
  %69 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %70 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %73 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %12, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %78

76:                                               ; preds = %53, %47
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32* null, i32** %12, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %78

78:                                               ; preds = %76, %63
  br label %79

79:                                               ; preds = %78, %34
  %80 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %81 = call i8* @sym_name(%struct.sym_hcb* %80)
  %82 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %83 = load i32, i32* @nc_sdid, align 4
  %84 = call i64 @INB(%struct.sym_hcb* %82, i32 %83)
  %85 = trunc i64 %84 to i32
  %86 = and i32 %85, 15
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %90 = load i32, i32* @nc_socl, align 4
  %91 = call i64 @INB(%struct.sym_hcb* %89, i32 %90)
  %92 = trunc i64 %91 to i32
  %93 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %94 = load i32, i32* @nc_sbcl, align 4
  %95 = call i64 @INB(%struct.sym_hcb* %93, i32 %94)
  %96 = trunc i64 %95 to i32
  %97 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %98 = load i32, i32* @nc_sbdl, align 4
  %99 = call i64 @INB(%struct.sym_hcb* %97, i32 %98)
  %100 = trunc i64 %99 to i32
  %101 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %102 = load i32, i32* @nc_sxfer, align 4
  %103 = call i64 @INB(%struct.sym_hcb* %101, i32 %102)
  %104 = trunc i64 %103 to i32
  %105 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %106 = load i32, i32* @nc_scntl3, align 4
  %107 = call i64 @INB(%struct.sym_hcb* %105, i32 %106)
  %108 = trunc i64 %107 to i32
  %109 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %110 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @FE_C10, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %79
  %116 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %117 = load i32, i32* @nc_scntl4, align 4
  %118 = call i64 @INB(%struct.sym_hcb* %116, i32 %117)
  %119 = trunc i64 %118 to i32
  br label %121

120:                                              ; preds = %79
  br label %121

121:                                              ; preds = %120, %115
  %122 = phi i32 [ %119, %115 ], [ 0, %120 ]
  %123 = load i8*, i8** %11, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %126 = load i32, i32* @nc_dbc, align 4
  %127 = call i32 @INL(%struct.sym_hcb* %125, i32 %126)
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %81, i32 %86, i32 %87, i32 %88, i32 %92, i32 %96, i32 %100, i32 %104, i32 %108, i32 %122, i8* %123, i32 %124, i32 %127)
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, 3
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %121
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %138 = call i8* @sym_name(%struct.sym_hcb* %137)
  %139 = load i32*, i32** %12, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @scr_to_cpu(i32 %143)
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %138, i32 %144)
  br label %146

146:                                              ; preds = %136, %132, %121
  %147 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %148 = call i8* @sym_name(%struct.sym_hcb* %147)
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %148)
  store i32 0, i32* %13, align 4
  br label %150

150:                                              ; preds = %159, %146
  %151 = load i32, i32* %13, align 4
  %152 = icmp slt i32 %151, 24
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %155 = load i32, i32* %13, align 4
  %156 = call i64 @INB_OFF(%struct.sym_hcb* %154, i32 %155)
  %157 = trunc i64 %156 to i32
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %153
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %150

162:                                              ; preds = %150
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @MDPE, align 4
  %166 = load i32, i32* @BF, align 4
  %167 = or i32 %165, %166
  %168 = and i32 %164, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %172 = call i32 @sym_log_bus_error(%struct.Scsi_Host* %171)
  br label %173

173:                                              ; preds = %170, %162
  ret void
}

declare dso_local %struct.sym_hcb* @sym_get_hcb(%struct.Scsi_Host*) #1

declare dso_local i32 @INL(%struct.sym_hcb*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i64 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @scr_to_cpu(i32) #1

declare dso_local i64 @INB_OFF(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_log_bus_error(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
