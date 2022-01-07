; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_rpsc2_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_rpsc2_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_rpsc2_cmd_s = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@FC_ELS_RPSC = common dso_local global i32 0, align 4
@FC_BRCD_TOKEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_rpsc2_build(%struct.fchs_s* %0, %struct.fc_rpsc2_cmd_s* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.fchs_s*, align 8
  %8 = alloca %struct.fc_rpsc2_cmd_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fchs_s* %0, %struct.fchs_s** %7, align 8
  store %struct.fc_rpsc2_cmd_s* %1, %struct.fc_rpsc2_cmd_s** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @bfa_hton3b(i32 %15)
  %17 = call i32 @FC_DOMAIN_CTRLR(i32 %16)
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.fchs_s*, %struct.fchs_s** %7, align 8
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @bfa_hton3b(i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @fc_els_req_build(%struct.fchs_s* %18, i32 %20, i32 %21, i32 0)
  %23 = load %struct.fc_rpsc2_cmd_s*, %struct.fc_rpsc2_cmd_s** %8, align 8
  %24 = call i32 @memset(%struct.fc_rpsc2_cmd_s* %23, i32 0, i32 24)
  %25 = load i32, i32* @FC_ELS_RPSC, align 4
  %26 = load %struct.fc_rpsc2_cmd_s*, %struct.fc_rpsc2_cmd_s** %8, align 8
  %27 = getelementptr inbounds %struct.fc_rpsc2_cmd_s, %struct.fc_rpsc2_cmd_s* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @FC_BRCD_TOKEN, align 4
  %30 = call i32 @cpu_to_be32(i32 %29)
  %31 = load %struct.fc_rpsc2_cmd_s*, %struct.fc_rpsc2_cmd_s** %8, align 8
  %32 = getelementptr inbounds %struct.fc_rpsc2_cmd_s, %struct.fc_rpsc2_cmd_s* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @cpu_to_be16(i32 %33)
  %35 = load %struct.fc_rpsc2_cmd_s*, %struct.fc_rpsc2_cmd_s** %8, align 8
  %36 = getelementptr inbounds %struct.fc_rpsc2_cmd_s, %struct.fc_rpsc2_cmd_s* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %54, %6
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fc_rpsc2_cmd_s*, %struct.fc_rpsc2_cmd_s** %8, align 8
  %48 = getelementptr inbounds %struct.fc_rpsc2_cmd_s, %struct.fc_rpsc2_cmd_s* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %37

57:                                               ; preds = %37
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = add i64 24, %61
  %63 = trunc i64 %62 to i32
  ret i32 %63
}

declare dso_local i32 @FC_DOMAIN_CTRLR(i32) #1

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @fc_els_req_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.fc_rpsc2_cmd_s*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
