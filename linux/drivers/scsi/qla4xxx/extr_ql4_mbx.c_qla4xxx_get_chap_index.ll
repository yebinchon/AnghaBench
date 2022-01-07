; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_get_chap_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_get_chap_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ql4_chap_table = type { i64, i32, i32, i32 }

@MAX_CHAP_ENTRIES_40XX = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Do not have CHAP table cache\0A\00", align 1
@QLA_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Do not have username and psw\0A\00", align 1
@CHAP_VALID_COOKIE = common dso_local global i32 0, align 4
@MAX_RESRV_CHAP_IDX = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@BIT_6 = common dso_local global i32 0, align 4
@MAX_CHAP_SECRET_LEN = common dso_local global i32 0, align 4
@MAX_CHAP_NAME_LEN = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_get_chap_index(%struct.scsi_qla_host* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ql4_chap_table*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %19 = call i64 @is_qla80XX(%struct.scsi_qla_host* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %23 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 24
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %16, align 4
  br label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @MAX_CHAP_ENTRIES_40XX, align 4
  store i32 %31, i32* %16, align 4
  br label %32

32:                                               ; preds = %30, %21
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %34 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @KERN_ERR, align 4
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %40 = call i32 @ql4_printk(i32 %38, %struct.scsi_qla_host* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @QLA_ERROR, align 4
  store i32 %41, i32* %6, align 4
  br label %158

42:                                               ; preds = %32
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %51 = call i32 @ql4_printk(i32 %49, %struct.scsi_qla_host* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @QLA_ERROR, align 4
  store i32 %52, i32* %6, align 4
  br label %158

53:                                               ; preds = %45
  %54 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %55 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %126, %53
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %129

61:                                               ; preds = %57
  %62 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %63 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.ql4_chap_table*
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %65, i64 %67
  store %struct.ql4_chap_table* %68, %struct.ql4_chap_table** %17, align 8
  %69 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %17, align 8
  %70 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @CHAP_VALID_COOKIE, align 4
  %73 = call i64 @__constant_cpu_to_le16(i32 %72)
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %61
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @MAX_RESRV_CHAP_IDX, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %82, %79, %75
  br label %126

85:                                               ; preds = %61
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %17, align 8
  %90 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @BIT_7, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %126

96:                                               ; preds = %88
  br label %106

97:                                               ; preds = %85
  %98 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %17, align 8
  %99 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @BIT_6, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %126

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %96
  %107 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %17, align 8
  %108 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* @MAX_CHAP_SECRET_LEN, align 4
  %112 = call i32 @strncmp(i32 %109, i8* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %106
  %115 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %17, align 8
  %116 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* @MAX_CHAP_NAME_LEN, align 4
  %120 = call i32 @strncmp(i32 %117, i8* %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %12, align 4
  %124 = load i32*, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  store i32 1, i32* %15, align 4
  br label %129

125:                                              ; preds = %114, %106
  br label %126

126:                                              ; preds = %125, %104, %95, %84
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %57

129:                                              ; preds = %122, %57
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, -1
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @qla4xxx_set_chap(%struct.scsi_qla_host* %136, i8* %137, i8* %138, i32 %139, i32 %140)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %14, align 4
  %146 = load i32*, i32** %11, align 8
  store i32 %145, i32* %146, align 4
  store i32 1, i32* %15, align 4
  br label %147

147:                                              ; preds = %144, %135
  br label %148

148:                                              ; preds = %147, %132, %129
  %149 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %150 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %149, i32 0, i32 0
  %151 = call i32 @mutex_unlock(i32* %150)
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %155, i32* %6, align 4
  br label %158

156:                                              ; preds = %148
  %157 = load i32, i32* @QLA_ERROR, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %156, %154, %48, %37
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i64 @is_qla80XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__constant_cpu_to_le16(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @qla4xxx_set_chap(%struct.scsi_qla_host*, i8*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
