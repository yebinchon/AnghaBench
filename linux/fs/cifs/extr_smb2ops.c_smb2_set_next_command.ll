; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_set_next_command.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_set_next_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.cifs_ses* }
%struct.cifs_ses = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i32 }
%struct.smb_rqst = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.smb2_sync_hdr = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"shdr NULL in smb2_set_next_command\0A\00", align 1
@smb2_padding = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb2_set_next_command(%struct.cifs_tcon* %0, %struct.smb_rqst* %1) #0 {
  %3 = alloca %struct.cifs_tcon*, align 8
  %4 = alloca %struct.smb_rqst*, align 8
  %5 = alloca %struct.smb2_sync_hdr*, align 8
  %6 = alloca %struct.cifs_ses*, align 8
  %7 = alloca %struct.TCP_Server_Info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cifs_tcon* %0, %struct.cifs_tcon** %3, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %4, align 8
  %11 = load %struct.cifs_tcon*, %struct.cifs_tcon** %3, align 8
  %12 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %11, i32 0, i32 0
  %13 = load %struct.cifs_ses*, %struct.cifs_ses** %12, align 8
  store %struct.cifs_ses* %13, %struct.cifs_ses** %6, align 8
  %14 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %15 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %14, i32 0, i32 0
  %16 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  store %struct.TCP_Server_Info* %16, %struct.TCP_Server_Info** %7, align 8
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %18 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %19 = call i64 @smb_rqst_len(%struct.TCP_Server_Info* %17, %struct.smb_rqst* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %21 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.smb2_sync_hdr*
  store %struct.smb2_sync_hdr* %26, %struct.smb2_sync_hdr** %5, align 8
  %27 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %5, align 8
  %28 = icmp eq %struct.smb2_sync_hdr* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @FYI, align 4
  %31 = call i32 @cifs_dbg(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %169

32:                                               ; preds = %2
  %33 = load i64, i64* %8, align 8
  %34 = and i64 %33, 7
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %164

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = and i64 %38, 7
  %40 = sub i64 8, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load %struct.cifs_tcon*, %struct.cifs_tcon** %3, align 8
  %43 = call i32 @smb3_encryption_required(%struct.cifs_tcon* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %37
  %46 = load i64, i64* @smb2_padding, align 8
  %47 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %48 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %51 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i64 %46, i64* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %57 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %60 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %55, i32* %63, align 8
  %64 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %65 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %8, align 8
  br label %163

72:                                               ; preds = %37
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %128, %72
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %77 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %131

80:                                               ; preds = %73
  %81 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %82 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %88 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %86, %93
  %95 = trunc i64 %94 to i32
  %96 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %97 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %105 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @memcpy(i32 %95, i64 %103, i32 %111)
  %113 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %114 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %122 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, %120
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %80
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %73

131:                                              ; preds = %73
  %132 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %133 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %139 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %137, %144
  %146 = trunc i64 %145 to i32
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @memset(i32 %146, i32 0, i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %151 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %150, i32 0, i32 1
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, %149
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %8, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %8, align 8
  %161 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %162 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %161, i32 0, i32 0
  store i64 1, i64* %162, align 8
  br label %163

163:                                              ; preds = %131, %45
  br label %164

164:                                              ; preds = %163, %36
  %165 = load i64, i64* %8, align 8
  %166 = call i32 @cpu_to_le32(i64 %165)
  %167 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %5, align 8
  %168 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %164, %29
  ret void
}

declare dso_local i64 @smb_rqst_len(%struct.TCP_Server_Info*, %struct.smb_rqst*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @smb3_encryption_required(%struct.cifs_tcon*) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
